Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/about_page', to: 'about_page#aboutPage', as: 'about_page'
  get '/about_form', to: 'about_page#aboutForm', as: 'about_form'
  get '/about_json', to: 'about_page#aboutJson', as: 'about_json'
  get '/', to: 'about_page#home', as: 'root'
end
