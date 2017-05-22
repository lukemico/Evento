Rails.application.routes.draw do
  get 'events/new'

  get 'events/show'

  root "home#index"

  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/logout" => "session#destroy"
  get "/register" => "users#new"

  resources :users
end
