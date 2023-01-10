module Types
  class MutationType < Types::BaseObject
    field :add_event, mutation: Mutations::AddEvent
    field :edit_event, mutation: Mutations::EditEvent
    field :destroy_event, mutation: Mutations::DestroyEvent
  end
end
