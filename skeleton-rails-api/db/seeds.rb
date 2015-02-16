
# random_age = rand(9..32)
# random_host = rand(1..10)

locations = ['1521 Howard St, San Francisco', "1197 8th St, San Francisco", "3601 Fillmore St, San Francisco", "137 Carmel St, San Francisco", "1711 9th Ave, San Francisco"]


FactoryGirl.define do
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


  factory :event do
    title {Faker::Lorem.sentence}
    description {Faker::Lorem.sentence}
    location {locations.sample}
    date_start {Faker::Date.forward(6)}
    date_end {Faker::Date.forward(7)}
    people_count {Faker::Number.number(2)}
    category {["Sports", "Entertainment", "Social", "Misc", "Video Games", "Food", "Outdoors"].sample}

  end

  # factory :rsvp do
  #   event_id { rand(1..10) }
  #   attendee_id { rand(1..10) }
  #   status "accepted"
  # end

end

# 10.times { FactoryGirl.create :user }
10.times { FactoryGirl.create :event }
# 10.times { FactoryGirl.create :rsvp}
