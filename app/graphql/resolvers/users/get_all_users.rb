class Resolvers::Users::GetAllUsers < Resolvers::Base

  type types[Types::UserType]

  def call(_obj, _args, _ctx)
    # authenticate! ctx
    User.all
  end
end
