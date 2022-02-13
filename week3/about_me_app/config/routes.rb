Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/about_page', to: 'about_page#about_page', as: 'about_page' #This line tells the routes file that /about_page route has to be handled by the index funtion in the about_page_controller.rb file.
  get '/about_form', to: 'about_page#about_form', as: 'about_form' #This line tells the same as above, but with changes.
  get 'about_json', to: 'about_page#about_json', as: 'about_json'
  post '/about_page', to: 'about_page#about_page', as: 'aboutPagePost'

  root 'about_page#index'
end

