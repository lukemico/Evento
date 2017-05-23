class Event < ApplicationRecord
  has_and_belongs_to_many :event_types
  belongs_to :location, optional: true
  has_many :bookings
  has_many :users, through: :bookings
  accepts_nested_attributes_for :location
end
