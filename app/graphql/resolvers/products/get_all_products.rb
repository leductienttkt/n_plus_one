class Resolvers::Products::GetAllProducts < Resolvers::Base

  type types[Types::ProductType]

  def call(_obj, _args, _ctx)

    # authenticate! ctx
    Product.all
  end
end
