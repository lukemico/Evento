class User < ApplicationRecord
  has_many :bookings
  has_many :events, through: :bookings
  has_secure_password

  geocoded_by :ip_address
  after_validation :geocode

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

end
