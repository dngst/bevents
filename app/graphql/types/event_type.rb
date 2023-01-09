# frozen_string_literal: true

module Types
  class EventType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :location, String
    field :category, String
    field :date, GraphQL::Types::ISO8601DateTime
    field :start, GraphQL::Types::ISO8601DateTime
    field :end, GraphQL::Types::ISO8601DateTime
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :location, String, null: false
    field :category, String, null: false
    field :date, GraphQL::Types::ISO8601Date, null: false
    field :start, Types::TimeType, null: false
    field :end, Types::TimeType, null: false
  end
end
