Rails.application.routes.draw do
  resources :novels
  resources :genres
  # resources :authors
  get 'authors', to: 'authors#index'
  get 'authors/:id', to: 'authors#show'
  post 'authors', to: 'authors#create'
  put 'authors/:id', to: 'authors#update'
  delete 'authors/:id', to: 'authors#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
