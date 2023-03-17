class BookingsController < ApplicationController
  def booktour; end

  def new
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.create(user_id: params[:user_id], flight_id: params[:flight_id])
    return unless @booking.save

    redirect_to @booking
  end

  def booking_destroy
    params['id'] = params[:id].to_i
    @booking = Booking.find(params[:id])
    return unless @booking.destroy

    redirect_to bookings_index_path
  end

  def allbookings
    @bookings = Booking.all
  end

  def check_booking
    @user = User.find_by(email: params[:search])
    @bookings = Booking.where(user_id: @user.id)
  end

  def check_in
    @booking = Booking.find_by(id: params[:booking_id]).present?
  end
end
