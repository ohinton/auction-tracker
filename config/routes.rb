Rails.application.routes.draw do
  root to: 'volunteers#index'
  resources :volunteers
  resources :donors

end
