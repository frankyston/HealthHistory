Rails.application.routes.draw do
  devise_for :users
  resources :consultations
  root to: 'home#index'
end
