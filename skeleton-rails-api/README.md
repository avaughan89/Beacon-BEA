Events routing

GET '/events'
* Will return all events

POST '/events'
* Will create a new event and redirect to the new event's view
* If save is unsuccessful, will send full error messages
* Form fields: title (string), description (text), location (string), date_time (datetime), category (string), adult (aka. 21+, boolean, default false), public (boolean, default true)
* Required paramaters: title, location, date_time, category

GET '/events/:event_id'
* Show event information
* Show all event guests
* Variable names: event (object) and guests (array of objects)

DELETE '/events/:event_id'
* Will destroy event and redirect to index

GET '/events/:event_id/pending'
* Will show all RSVPs with a pending status for that event (array of objects)
* Can manipulate to show user

POST '/events/:event_id/flag'
* Will flag an event as inappropriate (add to flag counter)

Users routing

GET '/users'
* Will return all users

POST '/users'
* Will create a new user (method incomplete; will figure out how to grab Facebook API data)

GET '/users/:user_id'
* Will show user info, upcoming events, and hosting events
* Variable names: user, upcoming_events (array of event objects), hosting_events (array of event objects)

Rsvp routing

POST '/rsvp'
* Will create a new Rsvp record using current event ID and current user ID; status will depend on whether the event is public or private (if public is true, status will be "accepted", else "pending")

PATCH '/rsvp/:rsvp_id'
* Will edit an Rsvp status to either "accepted" or "rejected"
