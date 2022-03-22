Rails.application.routes.draw do
  root "books#index"

  get "/publications", to: "publications#index"
  get "/publications/:id", to: "publications#show"
  get "/authors", to: "authors#index"
  get "/authors/:id", to: "authors#show"
  get "/:id", to: "books#show"
end
