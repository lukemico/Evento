class User < ApplicationRecord
  has_many :bookings
  has_many :events, through: :bookings
  has_secure_password

  geocoded_by :ip_address, :latitude => :lat, :longitude => :lon
  after_validation :geocode
end
