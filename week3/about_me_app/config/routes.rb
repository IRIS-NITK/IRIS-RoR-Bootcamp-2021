Rails.application.routes.draw do
  root "about_page#index"

  get "/about_form", to: "about_page#form"
  post "/about_page", to: "about_page#page"
  get "/about_page", to: "about_page#index"
  get "/about_json", to: "about_page#json"
end
