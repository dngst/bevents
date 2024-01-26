# frozen_string_literal: true

module Resolvers
  class EventSearch < Resolvers::BaseSearchResolver
    type [Types::EventType], null: false

    scope { Event.all }

    option :title, type: String, with: :title_filter
    option :description, type: String, with: :description_filter
    option :location, type: String, with: :location_filter
    option :category, type: String, with: :category_filter

    option :first, type: Int, with: :first
    option :skip, type: Int, with: :skip

    def title_filter(scope, value)
      scope.where 'title ILIKE ?', escape_search_term(value)
    end

    def description_filter(scope, value)
      scope.where 'description ILIKE ?', escape_search_term(value)
    end

    def location_filter(scope, value)
      scope.where 'location ILIKE ?', escape_search_term(value)
    end

    def category_filter(scope, value)
      scope.where 'category ILIKE ?', escape_search_term(value)
    end

    def first(scope, value)
      scope.limit(value)
    end

    def skip(scope, value)
      scope.offset(value)
    end
  end
end
