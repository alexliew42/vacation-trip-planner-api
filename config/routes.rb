Rails.application.routes.draw do
  get "/trips" => "trips#index"
  post "/users" => "users#create"
end
