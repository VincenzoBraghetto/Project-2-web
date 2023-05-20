Rails.application.routes.draw do
  resources :administrators
  resources :supervisors
  resources :resolutions
  resources :feedbacks
  resources :executives
  resources :comments
  resources :requesting_users
  resources :tickets
  resources :pages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
