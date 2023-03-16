class FlightsController < ApplicationController
    before_action :authenticate_user!
    def index
        @flights = Flight.all 
    end
    def allflights
        @flights = Flight.all 
    end
    def new
        @flight = Flight.new
    end
    def create
        @flight = Flight.new(flight_params)
      
        if @flight.save
          redirect_to @flight
        else
          render 'new'
        end
    end
      
    private
      
    def flight_params
      params.require(:flight).permit(:flight_no, :flight_name, :source, :destination, :takeoff_time, :landing_time,:price ,
         :total_seats, :available_seats, :occupied_seats)
    end
end 
