
# random_age = rand(9..32)
# random_host = rand(1..10)

# locations = ['1521 Howard St, San Francisco', "1197 8th St, San Francisco", "3601 Fillmore St, San Francisco", "137 Carmel St, San Francisco", "1711 9th Ave, San Francisco"]


# FactoryGirl.define do
  # sequence(:random_host) do |n|
  #   @random_host ||= rand(1..10)
  #   @random_host[n]
  # end

  # factory :user do
  #   name Faker::Name.name
  #   age random_age
  #   city Faker::Address.city
  #   state Faker::Address.state
  # end


  # factory :event do
  #   title {Faker::Lorem.sentence}
  #   description {Faker::Lorem.sentence}
  #   location {locations.sample}
  #   date_start {Faker::Date.forward(6)}
  #   date_end {Faker::Date.forward(7)}
  #   people_count {Faker::Number.number(2)}
  #   category {["Sports", "Entertainment", "Social", "Misc", "Video Games", "Food", "Outdoors"].sample}

  # end

  # factory :rsvp do
  #   event_id { rand(1..10) }
  #   attendee_id { rand(1..10) }
  #   status "accepted"
  # end

# end

# 10.times { FactoryGirl.create :user }
# 10.times { FactoryGirl.create :event }
# 10.times { FactoryGirl.create :rsvp}

# locations = ['1521 Howard St, San Francisco', "1197 8th St, San Francisco", "3601 Fillmore St, San Francisco", "137 Carmel St, San Francisco", "1711 9th Ave, San Francisco", "2325 3rd St, San Francisco", "74 Mission Rock St, San Francisco", "3301 Lyon St", ]

# "Sports", "Entertainment", "Social", "Misc", "Video Games", "Food", "Outdoors"

# "2015-02-20 12:00:00 -0800"

Event.create(title: "Aaron's birthday party", description: "Aaron is turning 20. Bring your own apple juice.", location: "1272 El Camino Real, San Bruno", date_start: "2015-02-14 12:00:00 -0800", date_end: "2015-02-14 17:00:00 -0800", people_count: 30, category: "Social")

Event.create(title: "Smash Bros tournament", description: "The red controller wins every time.", location: "1080 Folsom St, San Francisco", date_start: "2015-04-20 11:59:59 -0800", date_end: "2015-04-20 11:59:59 -0800", people_count: 20, category: "Video Games")

Event.create(title: "Burrito bet smackdown", description: "Bet burritos on Trivia Crack matches, coin tosses, ping pong games, and Smash Bros. Burritos from El Farolito only. Limit $5 per repaid burrito. No guac allowed.", location: "2779 Mission St, San Francisco", date_start: "2015-02-20 12:00:00 -0800", date_end: "2015-02-20 12:00:00 -0800", people_count: 15, category: "Food")

Event.create(title: "Desert Rabbits demos", description: "We made amazing apps. Hire us!", location: "633 Folsom St, San Francisco", date_start: "2015-02-20 11:00:00 -0800", date_end: "2015-02-20 20:00:00 -0800", people_count: 100, category: "Misc")

Event.create(title: "Bad joke competition", description: "Bring your best Reddit jokes. Worst joke wins a burrito!", location: "874 Fell St, San Francisco", date_start: "2015-04-20 11:59:59 -0800", date_end: "2015-04-20 11:59:59 -0800", people_count: 10, category: "Entertainment")

Event.create(title: "Join the Chipotle gang for lunch!", description: "Everyone follow Victoria to Chipotle. The one at the Metreon gives you more meat.", location: "525 Market St, San Francisco", date_start: "2015-02-20 20:00:00 -0800", date_end: "2015-02-20 20:00:00 -0800", people_count: 10, category: "Food")

Event.create(title: "Morning coffee run", description: "Victoria will get Philz for all team leads! Text her before 8:15 or you will default to a large Tesora medium medium.", location: "201 Berry St, San Francisco", date_start: "2015-02-20 20:00:00 -0800", date_end: "2015-02-20 20:00:00 -0800", people_count: 8, category: "Food")

Event.create(title: "The holiest of all holidays", description: "Don't worry about a thing, cause every little thing's gonna be alright.", location: "56 Hope Road Kingston 6 Hope Rd, Kingston, Jamaica", date_start: "2015-04-20 00:00:00 -0800", date_end: "2015-04-20 11:59:59 -0800", people_count: 200, category: "Social")

Event.create(title: "Coachella", description: "W00 music and hipster bands.", location: "81-800 Avenue 51, Indio, CA", date_start: "2015-04-10 11:59:59 -0800", date_end: "2015-04-17 11:59:59 -0800", people_count: 500, category: "Social")

Event.create(title: "Electric Daisy Carnival", description: "Wear tutus and furry boots and let's go to Vegas!", location: "", date_start: "2015-06-20 11:59:59 -0800", date_end: "2015-06-21 11:59:59 -0800", people_count: 100, category: "Misc")

Event.create(title: "Cowtipping", description: "Step 1: Find cow. Step 2: Tip it . At least 15%.", location: "653 Kansas St, San Francisco", date_start: "2015-04-20 11:59:59 -0800", date_end: "2015-04-20 11:59:59 -0800", people_count: 20, category: "Outdoors")

# Event.create(title: "", description: "", location: "", date_start: , date_end: , people_count: , category: "")

# Event.create(title: "", description: "", location: "", date_start: , date_end: , people_count: , category: "")

# Event.create(title: "", description: "", location: "", date_start: , date_end: , people_count: , category: "")
