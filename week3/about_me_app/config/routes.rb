Rails.application.routes.draw do
  
  root 'about_page#index'
  get 'about_json', to: 'about_page#about_json'
  post 'about_page', to: 'about_page#about_page'
  get 'about_form' , to: 'about_page#about_form'

end
