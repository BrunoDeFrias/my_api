class Booking < ApplicationRecord
  belongs_to :listing

  after_destroy :cancel_associated_reservations

  private

  def cancel_associated_reservations
    Reservation.where(listing_id: listing_id, start_date: start_date..end_date).destroy_all
  end
end
