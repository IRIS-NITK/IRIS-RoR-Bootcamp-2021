Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/about_form', to: 'about_page#form', as: 'form'
  post '/about_page', to: 'about_page#page', as: 'page'
  get '/about_json', to: 'about_page#json'
  root 'about_page#home'
end
