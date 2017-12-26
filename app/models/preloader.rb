class Preloader
  def self.noti_preload notis
    preloader = ActiveRecord::Associations::Preloader.new
    preloader.preload notis.select{|noti| noti.resource_type.eql?(Product.name)}, {resource: :shop}
    preloader.preload notis.select{|noti| noti.resource_type.eql?(Order.name)}, {resource: :user}
    return
  end

  # def self.user_preload users
  #   Preloader.like_preload users.map(&:likes).flatten
  # end
end
