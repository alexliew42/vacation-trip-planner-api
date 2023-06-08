Rails.application.routes.draw do
  get "/places" => "places#index"
  post "/places" => "places#create"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/trips" => "trips#index"
  post "/trips" => "trips#create"

  get "/tests" => "tests#index"
end
