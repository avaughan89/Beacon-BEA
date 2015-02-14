# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

random_age = rand(9..32)
random_host = rand(1..10)

FactoryGirl.define do
  # sequence(:random_host) do |n|
  #   @random_host ||= rand(1..10)
  #   @random_host[n]
  # end

  factory :user do
    name Faker::Name.name
    age random_age
    city Faker::Address.city
    state Faker::Address.state
  end

  factory :event do
    host_id random_host
    title Faker::Lorem.sentence
  end

  factory :rsvp do
    event_id { rand(1..10) }
    attendee_id { rand(1..10) }
    status "accepted"
  end

end

10.times { FactoryGirl.create :user }
10.times { FactoryGirl.create :event }
10.times { FactoryGirl.create :rsvp}
