module Types
  class MutationType < Types::BaseObject
    field :add_event, mutation: Mutations::AddEvent 
  end
end
