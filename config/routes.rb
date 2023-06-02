Rails.application.routes.draw do
  resources :administrators
  resources :supervisors
  resources :tickets, only: [:new, :show, :edit, :create, :destroy, :update]
  get "/tickets", to: "tickets#ticketHome"
  resources :pages 

  get 'search/tickets', to: 'tickets#search', as: 'search_tickets'

  resources :requesting_users, shallow: true do
    resources :tickets do
      resources :comments
      resources :resolutions
    end
  end
  
  resources :executives, shallow: true do
    resources :feedbacks
    resources :tickets do
      resources :comments
      resources :resolutions
    end
  end
  

  #diferenciar en tickets controller los casos en que se accede desde executive o user


  root "pages#home"
end
