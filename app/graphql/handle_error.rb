module HandleError
  extend ActiveSupport::Concern
  include ActiveSupport::Rescuable

  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      raise GraphQL::ExecutionError.new("Record not found")
    end
  end
end