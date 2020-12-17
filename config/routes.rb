Rails.application.routes.draw do

  get '/settings/profile', to: 'settings#profile', as: 'user_profile'
  get '/settings/password', to: 'settings#password', as: 'user_password'
  patch '/settings/update', to: 'settings#update', as: 'user_update'

  devise_for :users

  get 'dashboard/index'
  root to: 'landing_page#index'

  resources :appointment, :path => "shared", controller: :share_consultations, except: [:edit, :update]
  resources :treatments
  resources :exams
  resources :consultations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
