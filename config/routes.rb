Rails.application.routes.draw do
  resources :pet_histories
  resources :pets
  resources :clients
  root "clients#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
