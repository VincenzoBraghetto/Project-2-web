Rails.application.routes.draw do
  resources :administrators
  resources :supervisors

  resources :pages 

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
