class Resolvers::Shops::GetAllShops < Resolvers::Base

  type types[Types::ShopType]

  def call(_obj, _args, _ctx)

    # authenticate! ctx
    Shop.all
  end
end
