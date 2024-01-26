# frozen_string_literal: true

module Queries
  class FetchEvents < Queries::BaseQuery
    type [Types::EventType], null: false

    def resolve
      Event.all
    end
  end
end
