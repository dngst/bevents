# frozen_string_literal: true

module Mutations
  class AddEvent < Mutations::BaseMutation
    argument :params, Types::Input::EventInputType, required: true

    field :event, Types::EventType, null: false

    def resolve(params:)
      event_params = Hash params
      event = Event.create!(event_params.merge(user: current_user)) if current_user_present
      { event: }
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new(
        "Invalid attributes for #{e.record.class}: #{e.record.errors.full_messages.join(', ')}"
      )
    end
  end
end
