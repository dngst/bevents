# bevents

> API

## Requirements

- Ruby
- Bundler
- Ruby on Rails
- PostgreSQL

## Install

$ bin/setup

$ bin/rails s

[127.0.0.1:3000/graphiql](http://127.0.0.1:3000/graphiql)

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