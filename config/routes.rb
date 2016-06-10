Rails.application.routes.draw do
  get 'profile/show'



  devise_for :users

  namespace :dutchies do
    resources :offers, only: [:index] do
      member do
        patch :accept
        patch :refuse
      end
    end
  end

  resources :dutchies, only: [:index, :show] do
    resources :offers, only: [:new, :create]
  end

  resources :profile, only: [:show, :edit, :update]


  namespace :refugees do
    resources :requests, only: [:index]
  end

  resources :refugees, only: :show

# resources :requests, only: [:index]
#   resources :offers, only: [:index] do
#       member do
#         patch :accept
#         patch :refuse
#       end
#     end



  root to: 'pages#home'

end
