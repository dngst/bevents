module Types
  class QueryType < Types::BaseObject
    field :fetch_events, resolver: Queries::FetchEvents
  end
end
