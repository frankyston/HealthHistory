Rails.application.routes.draw do
  resources :treatments
  devise_for :users
  root to: 'home#index'
end
