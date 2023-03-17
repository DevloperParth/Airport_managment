class BaggagesController < ApplicationController
  def new
    @booking = Booking.find((params[:booking_id]))
    @baggage = @booking.baggages.build
  end

  def create
    # params["booking_id"]=(params[:booking_id]).to_i
    @booking = Booking.find(params[:booking_id])
    @baggage = @booking.baggages.build(baggage_params)
    return unless @baggage.save

    @baggage
  end

  private

  def baggage_params
    params.require(:baggage).permit(:booking_id, :weight, :status)
  end
end
