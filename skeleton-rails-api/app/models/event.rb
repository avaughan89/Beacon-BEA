class Event < ActiveRecord::Base
  has_many :rsvps
  has_many :users, through: :rsvps
  # validates :title, :location, :date_time, :host_id, :category, presence: true

end
