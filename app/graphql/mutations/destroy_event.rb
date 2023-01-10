module Mutations
  class DestroyEvent < Mutations::BaseMutation
    field :id, ID, null: true
    argument :id, ID, required: true


    def resolve(id:)
      event = Event.find(id)

      begin
        event.destroy
        { id: id }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end 
