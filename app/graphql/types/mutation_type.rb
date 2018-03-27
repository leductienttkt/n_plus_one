Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createUser, function: Resolvers::Users::CreateUser.new
  field :createShop, function: Resolvers::Shops::CreateShop.new
  field :signInUser, function: Resolvers::Auth::SignInUser.new
  field :signOutUser, function: Resolvers::Auth::SignOutUser.new
end
