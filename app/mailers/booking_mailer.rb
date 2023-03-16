class BookingMailer < ApplicationMailer
    def booking_confirmation(booking)
        @booking = booking
        @user = booking.user
        @flight = booking.flight
        mail(to: @user.email, subject: 'Booking Confirmation')
    end
    def booking_cancellation(booking)
        @booking = booking
        @user = booking.user
        @flight = booking.flight
        mail(to: @user.email, subject: 'Booking Cancellation')
    end

    def check_in_confirmation(booking)
        @booking = booking
        @user = booking.user
        @flight = booking.flight
        mail(to: @user.email, subject: 'Check In Confirmed')
    end
    
end
