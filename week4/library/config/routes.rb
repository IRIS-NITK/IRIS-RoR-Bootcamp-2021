Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'books#home', as: 'home'
  get '/:id', to: 'books#info', as: 'info'
  get '/authors', to: 'books#authors', as: 'authors'
  get '/authors/:id', to: 'books#authorsr'
  get '/publications', to: 'books#publication'
  get '/publicatoin/:id', to: 'books#publicatoin'
end
