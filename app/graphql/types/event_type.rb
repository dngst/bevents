module Types
  class EventType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :location, String
    field :category, String
    field :date, GraphQL::Types::ISO8601DateTime
    field :start_time, GraphQL::Types::ISO8601DateTime
    field :end_time, GraphQL::Types::ISO8601DateTime
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
