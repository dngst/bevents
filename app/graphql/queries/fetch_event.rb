module Queries
  class FetchEvent < Queries::BaseQuery
    type Types::EventType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Event.find(id)
    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Event does not exist')
    rescue ActiveRecord::RecordInvalid => _e
      GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
        " #{e.record.errors.full_messages.join(', ')}")
    end
  end
end