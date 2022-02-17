Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :pages ,excecpt: [:show]
  resources :cars
  get 'home/index'
  get 'home/About'
  get 'cars/index'
  get 'cars/:id', to: 'cars#show'
  root "home#index"
  get '/pages/:permlink' => "pages#permlink", as: 'permlink'
end
