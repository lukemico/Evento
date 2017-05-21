class Event < ApplicationRecord
  has_and_belongs_to_many :event_types
  belongs_to :location
  has_many :bookings
  has_many :users, through: :bookings
end
