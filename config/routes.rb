Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  resources :users do 
    resources :treatments
    resources :exams
    resources :consultations
  end
  resources :treatments
  resources :exams
  resources :consultations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
