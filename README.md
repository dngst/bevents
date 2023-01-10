# Requirements

- Ruby
- Bundler
- Ruby on Rails
- PostgreSQL

## Install

$ bin/setup

$ bin/rails s

[localhost:3000/graphiql](http://127.0.0.1:3000/graphiql)

## Usage

Get all events

```
query {
  fetchEvents {
    id
    title
    description
    category
    location
    startTime
    endTime
  }
}
```

Get event by id
```
query {
  fetchEvent(id: 7) {
    id
    title
    description
    category
    location
    startTime
    endTime
  }
}
```

Add event
```
mutation {
  addEvent(input: { params: {
    title: "event title",
    description: "event description", 
    location: "event location",
    category: "event category",
    date: "2023-1-15",
    startTime: "08:00",
    endTime: "09:00"
  }}) {
    event {
      id
      title
      description
      location
      category
      date
      startTime
      endTime
    }
  }
}
```

Delete event
```
mutation {
  destroyEvent(input: { id: "7" }) {
    id
  }
}
```
