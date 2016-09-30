Rails.application.routes.draw do
  devise_for :users

  root to: 'volunteers#show'

  resources :volunteers
  
  resources :donors do
    resources :updates
  end

end
