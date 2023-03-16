Rails.application.routes.draw do
  get 'bookings/booktour'
  get 'passengers/index'
  resources :passengers
  get 'users/index'
  root 'flights#index'
  
  devise_for :users

  get 'flights/all' ,to: "flights#allflights"
  get 'users/all'  , to: "users#allusers"
  get 'flightroutes/index' , to: "flightroutes#index"
  get 'flightroutes/flightschedule', to: "flightroutes#flightschedule"
  post 'flightroutes/create', to: "flightroutes#create"
  get 'flightroutes/new', to: "flightroutes#new"
  resources :flights

  get 'bookings/index' , to: "bookings#index"
  get 'bookings/allbookings' , to: "bookings#allbookings"
  resources :bookings 

  get '/bookings/booking_destroy/action' ,to: "bookings#booking_destroy"
  
  post 'flights/check_in' ,to: "flights#check_in"
  get 'bookings/check_booking/action' ,to: "bookings#check_booking"
  get 'bookings/check_in/action' ,to: "bookings#check_in"
end
