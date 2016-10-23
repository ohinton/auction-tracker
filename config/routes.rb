Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => :registrations }

  root to: 'home#index'

  resources :volunteers

  resources :donors do
    resources :updates
  end

end
