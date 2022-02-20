Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # post 'about_page/about_page'
  post "/about_page", to: "about_page#about_page",as: 'details'
  get "/about_page", to:"about_page#about_form", as:'ap'
  get "/about_form", to:"about_page#about_form", as:'af'
  get "/about_json", to:"about_page#about_json", as:'aj'
  root "about_page#home"
end
