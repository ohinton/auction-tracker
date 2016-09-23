Rails.application.routes.draw do
  devise_for :users

  root to: 'volunteers#index'
  
  resources :volunteers
  resources :donors

end
