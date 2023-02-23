# Usage

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
    userId
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
    userId
  }
}
```

Register

POST localhost:3000/auth

```
{
  "email": "dngst@pm.me",
  "password": "qEo8ZvG9^",
  "password_confirmation": "qEo8ZvG9^"
}
```

Login

POST localhost:3000/auth/sign_in

```
{
  "email": "dngst@pm.me",
  "password": "qEo8ZvG9^"
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
    date: "2023-11-15",
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
      userId
    }
  }
}
```

Edit event
```
mutation {
  editEvent(input: { id: "4", params: {
    location: "Argon City"
  }}) {
    event {
      id
      title
      location
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

Search event by title, description, location & category

```
query {
  searchEvents(description: "Ruby") {
    description
  }
}
```

Get x no. of events
```
query {
  searchEvents(first: 10) {
    id
    title
  }
}
```

