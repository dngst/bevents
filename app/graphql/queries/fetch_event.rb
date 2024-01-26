# frozen_string_literal: true

module Queries
  class FetchEvent < Queries::BaseQuery
    type Types::EventType, null: false
    argument :id, ID, required: true

    def resolve(id:)
      Event.find(id)
    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Event does not exist')
    end
  end
end
