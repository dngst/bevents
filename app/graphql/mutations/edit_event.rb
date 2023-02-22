module Mutations
  class EditEvent < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :params, Types::Input::EventInputType, required: true

    field :event, Types::EventType, null: false
    field :id, ID, null: true

    def resolve(id:, params:)
      event = Event.find(id)
      event_params = Hash params

      event.update!(event_params) if authorize_user(event)
      { event: }
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new(
        "Invalid attributes for #{e.record.class}: #{e.record.errors.full_messages.join(', ')}"
      )
    end
  end
end
