Rails.application.routes.draw do
  devise_for :users

  root to: 'volunteers#show'

  resources :volunteers
  resources :donors
  resources :updates

end
