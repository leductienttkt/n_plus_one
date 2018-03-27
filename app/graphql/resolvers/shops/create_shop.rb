class Resolvers::Shops::CreateShop < Resolvers::Base

  argument :name, !types.String

  type Types::ShopType

  def call(obj, args, ctx)

    # authenticate! ctx

    Shop.create! name: args[:name], user: ctx[:current_user]
  end
end
