class AuthToken < ApplicationRecord

  belongs_to :user

  validates :token, presence: true
  validates :refresh_token, presence: true
  validates :expired_at, presence: true

  class << self
    def generate! user
      token = find_or_initialize_by user: user
      token.renew!
    end

    def from_token! token
      find_by(token: token).tap{|t| raise APIError::TokenExpired if t&.expired?}
    end

    def verify token
      find_by(token: token)&.user
    end
  end

  def renew!
    update_attributes! token: unique_random(:token), refresh_token: unique_random(:refresh_token),
      expired_at: 6000.second.from_now
    self
  end

  def expired?
    expired_at <= Time.zone.now
  end

  def expire!
    update_attributes! expired_at: Time.zone.now
  end

  private
  def unique_random attr
    str_len = 32
    loop do
      str = SecureRandom.hex str_len
      break str unless self.class.exists?(attr => str)
    end
  end
end
