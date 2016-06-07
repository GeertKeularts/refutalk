Rails.application.routes.draw do
  devise_for :users

  resources :dutchies, only: [:index, :show] do
    resources :requests, only: [:new, :create]
  end

  namespace :dutchies do
    resources :requests, only: [:index] do
      member do
        patch :accept
        patch :refuse
      end
    end
  end


  namespace :refugees do
    resources :requests, only: [:index]
  end 



  root to: 'pages#home'
  
end
