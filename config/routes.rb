Rails.application.routes.draw do
  get "/trips" => "trips#index"
  post "/users" => "users#create"
  post "/trips" => "trips#create"
end
