Rails.application.routes.draw do
  get 'pages/staff_picks'
  get 'pages/near_me'

  root "home#index"

  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/logout" => "session#destroy"
  get "/register" => "users#new"

  resources :users
  resources :events
end
