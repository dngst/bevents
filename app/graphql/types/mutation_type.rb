module Types
  class MutationType < Types::BaseObject
    field :add_event, mutation: Mutations::AddEvent
    field :destroy_event, mutation: Mutations::DestroyEvent
    field :edit_event, mutation: Mutations::EditEvent
  end
end
