class Event < ApplicationRecord
  belongs_to :event_type
  belongs_to :location
  has_many :bookings
  has_many :users, through: :bookings
end
