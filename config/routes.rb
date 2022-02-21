Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :sellers,:loactions
  resources :pages ,excecpt: [:show]
  resources :cars do
    collection do
      get "search"
    end
  end
  get 'home/index'
  get 'home/About'
  get 'cars/index'
  get 'sellers/index'
  get 'cars/:id', to: 'cars#show'
  get 'sellers/:id', to: 'sellers#show'
  get "/loactions/:id", to: "loactions#show"
  root "home#index"
  get '/pages/:permlink' => "pages#permlink", as: 'permlink'
end
