class Event < ActiveRecord::Base
  has_many :rsvps
  has_many :users, through: :rsvps
  validates :title, :location, :date_time, :category, presence: true

end
