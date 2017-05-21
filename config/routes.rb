Rails.application.routes.draw do
  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/logout" => "session#destroy"
  get "/register" => "users#new"

  resources :users
end
