class BaggageClaimsController < ApplicationController
      def new
        @booking = Booking.find(params[:booking_id])
        @baggage_claim = @booking.baggage_claims.build
      end
    
      def create
        @booking = Booking.find(params[:booking_id])
        @baggage_claim = @booking.baggage_claims.build(baggage_claim_params)
        if @baggage_claim.save
          redirect_to @booking, notice: "Baggage claim was successfully created."
        else
          render :new
        end
      end
    
      def index
        @baggage_claim = BaggageClaim.all
      end

      def show 
        @baggage_claim = BaggageClaim.find(current_user.id)
      end

      private
    
      def baggage_claim_params
        params.require(:baggage_claim).permit(:description, :status)
      end

end
