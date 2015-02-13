class Event < ActiveRecord::Base
  has_many :rsvps
  has_many :users, through: :rsvps
  validates :title, :city, :state, :date_time, :host_id, :category, presence: true

end
