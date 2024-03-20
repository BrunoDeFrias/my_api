class Listing < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reservation, dependent: :destroy
end
