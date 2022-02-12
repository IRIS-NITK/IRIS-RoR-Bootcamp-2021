Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/about", to:"about#home"
  post "/" ,to:'about#postpage' , as:'about_page'
  root to:'about#home', as:"rootpath"
  get "/json",to:'about#json',as:'json_path'
  post "/json",to:'about#json',as:'json_postpath'
end
