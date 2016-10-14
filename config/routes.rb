Rails.application.routes.draw do
  devise_for :users

  # root to: 'volunteers#show'
  root to: 'home#index'

  resources :volunteers
  
  resources :donors do
    resources :updates
  end

end
