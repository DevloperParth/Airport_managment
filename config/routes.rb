Rails.application.routes.draw do
  get 'users/index'
  root 'flights#index'
  devise_for :users
  #get 'welcome/index'
  #root 'welcome#index'
  get 'flights/all' ,to: "flights#allflights"
  get 'users/all'  , to: "users#allusers"
  get 'flightroutes/index' , to: "flightroutes#index"
  get 'flightroutes/flightschedule', to: "flightroutes#flightschedule"
  get 'flightroutes/create', to: "flightroutes#create"
  get 'flightroutes/new', to: "flightroutes#new"
  resources :flights
end
