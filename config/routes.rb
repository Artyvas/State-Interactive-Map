Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  #  State routes:
  namespace :api do
    get "/states" => "states#index"
    get "/states/:code" => "states#show"
  end
end
