module Mutations
  class EditEvent < Mutations::BaseMutation
    argument :category, String, required: false
    argument :date, String, required: false
    argument :description, String, required: false
    argument :end_time, String, required: false
    argument :id, ID, required: true
    argument :location, String, required: false
    argument :start_time, String, required: false
    argument :title, String, required: false

    field :event, Types::EventType, null: false
    field :id, ID, null: true

    def resolve(id:, **args)
      event = Event.find(id)
      event_params = Hash args

      event.update!(event_params) if authorize_user(event)
      { event: }
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new(
        "Invalid attributes for #{e.record.class}: #{e.record.errors.full_messages.join(', ')}"
      )
    end
  end
end
