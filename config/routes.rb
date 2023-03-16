Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/users/:id', to: 'users#show'
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "events#index"
  # Defines the root path route ("/")
  resources :confirmations, only: [:create, :destroy]
end
