Rails.application.routes.draw do

  post "/bookings"  => "bookings#create"
  delete "/bookings" => "bookings#delete"

  root "home#index"

  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/logout" => "session#destroy"
  get "/register" => "users#new"


  resources :pages
  get "/near_me" => "pages#near_me"
  get "/staff_picks" => "pages#staff_picks"
  get "/today" => "pages#today"
  get "/next_week" => "pages#next_week"
  get "/next_month" => "pages#next_month"
  resources :users
  resources :events
  
end
