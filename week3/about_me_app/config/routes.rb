Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/about", to:"about#home"
  post "/about_form" ,to:'about#postpage'
  get "/about_form" ,to:'about#about_form', as:'about_page'
  root to:'about#home', as:"rootpath"
  get "/about_json",to:'about#json',as:'json_path'
  get "/json",to:'about#jsonpage'
end
