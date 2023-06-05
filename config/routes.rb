Rails.application.routes.draw do
  get "/places" => "places#index"
  get "/trips" => "trips#index"
  post "/users" => "users#create"
  post "/trips" => "trips#create"
end
