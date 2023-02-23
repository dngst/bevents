# Usage

Get all events

```
{
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
{
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

/auth

```
{
  "email": "dngst@pm.me",
  "password": "qEo8ZvG9^",
  "password_confirmation": "qEo8ZvG9^"
}
```

Login

/auth/sign_in

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
  destroyEvent(input: {id: "7"}) {
    id
  }
}
```

Search event by title, description, location & category

```
{
  searchEvents(description: "Ruby") {
    description
  }
}
```

Get x no. of events
```
{
  searchEvents(first: 10) {
    id
    title
  }
}
```