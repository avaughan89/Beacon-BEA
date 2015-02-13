class User < ActiveRecord::Base
  has_many :rsvps
  has_many :events, through: :rsvps
  validates :city, :state, presence: true
end
