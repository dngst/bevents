module Types
  class QueryType < Types::BaseObject
    field :fetch_event, resolver: Queries::FetchEvent
    field :fetch_events, resolver: Queries::FetchEvents
    field :search_events, resolver: Resolvers::EventSearch
  end
end
