class Resolvers::Auth::SignOutUser < Resolvers::Base

  type types.String

  def call(_obj, args, ctx)

    authenticate! ctx

    ctx[:current_user].auth_token&.destroy!
    ctx[:current_user] = nil
    ctx[:session][:token] = nil
    :ok
  end
end
