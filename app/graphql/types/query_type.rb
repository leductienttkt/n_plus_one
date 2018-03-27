Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :users, function: Resolvers::Users::GetAllUsers.new
  field :shops, function: Resolvers::Shops::GetAllShops.new
  field :shop, function: Resolvers::Shops::GetShop.new
  field :products, function: Resolvers::Products::GetAllProducts.new
end
