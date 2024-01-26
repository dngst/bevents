# frozen_string_literal: true

module Mutations
  class DestroyEvent < Mutations::BaseMutation
    argument :id, ID, required: true

    field :id, ID, null: true

    def resolve(id:)
      event = Event.find(id)
      event.destroy if authorize_user(event)
      { id: }
    end
  end
end
