Types::ShopType = GraphQL::ObjectType.define do
  name 'Shop'
  field :id, !types.ID
  field :name, !types.String
  field :createdBy, Types::UserType, property: :user do
    preload :user
  end
  field :products, !types[Types::ProductType] do
    preload :products
  end
end
