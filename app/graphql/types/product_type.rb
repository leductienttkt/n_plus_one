Types::ProductType = GraphQL::ObjectType.define do
  name 'Product'
  field :id, !types.ID
end
