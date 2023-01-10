module Types
  class QueryType < Types::BaseObject
    field :fetch_events, resolver: Queries::FetchEvents
    field :fetch_event, resolver: Queries::FetchEvent
  end
end
