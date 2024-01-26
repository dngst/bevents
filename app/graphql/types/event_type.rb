# frozen_string_literal: true

module Types
  class EventType < Types::BaseObject
    field :category, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :date, GraphQL::Types::ISO8601Date
    field :description, String
    field :end_time, GraphQL::Types::ISO8601DateTime
    field :id, ID, null: false
    field :location, String
    field :start_time, GraphQL::Types::ISO8601DateTime
    field :title, String
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer
  end
end
