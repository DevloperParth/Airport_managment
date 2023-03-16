class Booking < ApplicationRecord
    belongs_to :flight
    belongs_to :user

    after_create :send_booking_confirmation
    after_destroy :send_booking_cancellation
    after_save :send_check_booking_confirmation

  
    def send_booking_confirmation
      BookingMailer.booking_confirmation(self).deliver_now
    end
  
    def send_booking_cancellation
      BookingMailer.booking_cancellation(self).deliver_now
    end

    def send_check_in_confirmation
      BookingMailer.check_in_confirmation(self).deliver_now
    end
end
