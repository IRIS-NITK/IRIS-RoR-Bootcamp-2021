Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  # creating additional 3 routes
  post 'about_page' , to: 'about_page#about_page'
  get 'about_form' , to: 'about_page#about_form'
  get 'about_json' , to: 'about_page#about_json'


  # changing root route
  root 'about_page#index'
end
