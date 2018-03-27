class Resolvers::Shops::GetShop < Resolvers::Base

  argument :id, !types.ID

  type Types::ShopType

  def call(_obj, args, _ctx)
    # authenticate! ctx
    Shop.find_by id: args[:id]
  end
end
