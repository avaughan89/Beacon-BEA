class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :rsvps, foreign_key: "attendee_id"
  has_many :events, through: :rsvps, foreign_key: "host_id"

  # validates :city, :state, presence: true
end


# querying the database for events and users

# querying all events that a user has hosted

# Event.where(host_id: @current_user.id)

# querying all events that a user has attended

# events = Rsvp.where(attendee_id: @current_user.id).pluck(:event_id)
# => will return an array of event IDs
# events.each do |e|
#   Event.find(e)
# end

# querying all people who went to an event

# @current_event = Event.find(params[:id])
# @current_event.rsvps.pluck(:attendee_id)
# => will return an array of all attendee IDs

