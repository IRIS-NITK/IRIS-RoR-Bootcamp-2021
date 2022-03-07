Rails.application.routes.draw do
  resources :author_books
  resources :books
  resources :publications
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'books#index'
  get '/:id', to: 'books#show'
  get '/authors', to: 'authors#info'
  get '/authors/:id', to: 'authors#id_info'
  get 'publications', to: 'publications#info'
  get '/publications/:id', to: 'publications#info_id'
end
