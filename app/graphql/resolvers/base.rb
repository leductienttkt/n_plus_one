class Resolvers::Base < GraphQL::Function

  def authenticate! ctx
    raise GraphQL::ExecutionError.new("Authentication required") if ctx[:current_user].blank?
  end
end
