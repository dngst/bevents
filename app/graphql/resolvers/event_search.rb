module Resolvers
  class EventSearch < Resolvers::BaseSearchResolver
    type [Types::EventType], null: false

    scope { Event.all }

    option :title, type: String, with: :title_filter
    option :description, type: String, with: :description_filter
    option :location, type: String, with: :location_filter
    option :category, type: String, with: :category_filter

    def title_filter(s, v)
      s.where 'title ILIKE ?', escape_search_term(v)
    end

    def description_filter(s, v)
      s.where 'description ILIKE ?', escape_search_term(v)
    end

    def location_filter(s, v)
      s.where 'location ILIKE ?', escape_search_term(v)
    end

    def category_filter(s, v)
      s.where 'category ILIKE ?', escape_search_term(v)
    end
  end
end
