Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  # creating additional 3 routes
  get '/about_page' , to: 'about_page#aboutPage' , as: 'aboutPage'
  get '/about_form' , to: 'about_page#aboutForm' , as: 'aboutForm'
  get '/about_json' , to: 'about_page#aboutJson' , as: 'aboutJson'


  # changing root route
  root 'about_page#aboutPage'
end
