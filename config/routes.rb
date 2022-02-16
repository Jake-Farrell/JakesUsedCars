Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :pages ,excecpt: [:show]
  get 'home/index'
  get 'home/About'
  root "home#index"
  get '/pages/:permlink' => "pages#permlink", as: 'permlink'
end
