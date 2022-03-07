Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'about_page#about_form'
post 'about_page/about_page'
get 'about_page/about_json'
get 'about_page/about_form'

end
