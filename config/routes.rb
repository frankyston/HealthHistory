Rails.application.routes.draw do
  resources :consultations
  devise_for :users
  root to: 'home#index'
end
