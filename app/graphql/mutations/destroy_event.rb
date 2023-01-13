module Mutations
  class DestroyEvent < Mutations::BaseMutation
    argument :id, ID, required: true

    field :id, ID, null: true

    def resolve(id:)
      event = Event.find(id)

      begin
        event.destroy
        { id: }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:" \
                                    " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end
