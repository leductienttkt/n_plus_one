class Resolvers::Auth::SignInUser < Resolvers::Base

  argument :auth, !Types::AuthProviderEmailInput

  # defines inline return type for the mutation
  type do
    name 'SigninPayload'

    field :token, types.String
    field :user, Types::UserType
  end

  def call(_obj, args, ctx)
    input = args[:auth]

    # basic validation
    return unless input

    user = User.find_by email: input[:email]

    # ensures we have the correct user
    return unless user
    return unless user.authenticate(input[:password])

    AuthToken.generate! user
    ctx[:session][:token] = user.auth_token.token

    OpenStruct.new({
      user: user,
      token: user.auth_token.token
    })
  end
end
