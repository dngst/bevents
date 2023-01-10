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
    }
  }
}
```

Edit event
```
mutation {
  editEvent(input: { id: "17",  params: {
    title: "Hike 007",
    description: "Pyramids"
    location: "Egypt",
    category: "Hidden texts"
    date: "2023-12-31",
    startTime: "02:30",
    endTime: "4:30"
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
