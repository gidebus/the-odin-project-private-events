Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :events
  root "events#index"
  # Defines the root path route ("/")
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # devise_for :users
end
