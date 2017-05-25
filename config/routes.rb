Rails.application.routes.draw do

  post "/bookings"  => "bookings#create"
  delete "/bookings" => "bookings#delete"

  root "home#index"

  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/logout" => "session#destroy"
  get "/register" => "users#new"


  resources :pages
  get "/search_events" => "pages#search_events"
  get "/near_me" => "pages#near_me"
  get "/staff_picks" => "pages#staff_picks"
  get "/today" => "pages#today"
  get "/this_week" => "pages#this_week"
  get "/this_month" => "pages#this_month"
  resources :users
  resources :events

end
