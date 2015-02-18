# Using the [Beacon API](https://beacon-bea.herokuapp.com/events)

Our API contains information regarding upcoming events. Each event will be displayed on the map with a popup window containing event details, and a beacon that will grow with the number of guests.

---

### Viewing events

```ruby
get '/events'
```

---

### Creating events

```ruby
post '/events'
```

Parameters for creating a new event:

| Field name | Data type | Required/optional | Description |
|---|---|---|---|
| title | string | Required |  |
| description | text | Optional |  |
| location | string | Required | Should be a valid street address; Google Maps will only recognize and place beacons for formatted addresses, not landmarks |
| date_start | datetime | Required |  |
| date_end | datetime | Optional | Beacons will not show for past events |
| people_count | integer | Optional | Will increment and increase beacon radius for each user that clicks attending. Defaults to 1. |
| category | string | Required | Select from the drop-down menu--options include Sports, Entertainment, Social, Misc, Video Games, Food, and Outdoors |

---

```ruby
get '/events/:event_id'
```

* Show event information


