# bevents

> A platform for event organizers to create and manage different types of events
while making them easily accessible to target markets

## Requirements

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
