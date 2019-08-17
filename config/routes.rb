Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists#, except: [:edit, :create]
  resources :songs

  root to: 'artists#index'
end
