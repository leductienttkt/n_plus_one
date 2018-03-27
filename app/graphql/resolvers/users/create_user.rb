class Resolvers::Users::CreateUser < Resolvers::Base

  AuthProviderInput = GraphQL::InputObjectType.define do
    name 'AuthProviderSignupData'

    argument :email, Types::AuthProviderEmailInput
  end

  argument :name, !types.String
  argument :authProvider, !AuthProviderInput

  type Types::UserType

  def call(_obj, args, _ctx)

    authenticate! ctx

    User.create!(
      name: args[:name],
      email: args[:authProvider][:email][:email],
      password: args[:authProvider][:email][:password]
    )
  end
end
