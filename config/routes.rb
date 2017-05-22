Rails.application.routes.draw do
  get "/staff_picks" => "pages#staff_picks"
  get "/near_me" => "pages#near_me"

  post "/bookings"  => "bookings#create"
  delete "/bookings" => "bookings#delete"

  root "home#index"

  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/logout" => "session#destroy"
  get "/register" => "users#new"

  get "/today" => "home#today"
  resources :users
  resources :events
end
