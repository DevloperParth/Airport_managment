class FlightroutesController < ApplicationController
  def index
   @routes = Route.all
  end
    
  def new 
    @route = Route.new
  end
  
  def flightschedule
    @routes = Route.all
  end

  def create
    @route = Route.new(route_params)
         
    if @route.save
      redirect_to @route
    else
      render :new
    end
  end
 
  private
  def route_params
    params.require(:routes).permit(:name).merge(flight_id: current_flight.id)
  end
    
end


