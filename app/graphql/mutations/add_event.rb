module Mutations
  class AddEvent < Mutations::BaseMutation
    argument :params, Types::Input::EventInputType, required: true

    field :event, Types::EventType, null: false

    def resolve(params:)
      event_params = Hash params

      begin
        event = Event.create!(event_params)

        { event: event }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("INvalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end
