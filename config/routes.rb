Rails.application.routes.draw do
  get 'profile/show'

  get 'profile/edit'

  get 'profile/update'

  devise_for :users

  resources :dutchies, only: [:index, :show] do
    resources :offers, only: [:new, :create]
  end

  resources :profile, only: [:show, :edit, :update]

  namespace :dutchies do
    resources :offers, only: [:index] do
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
