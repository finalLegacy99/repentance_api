Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    
    post "/sessions" => "sessions#create"

    post "/users" => "users#create"

    get "/texts" => "texts#index"
    patch "/texts/:id" => "texts#update"

  end



end
