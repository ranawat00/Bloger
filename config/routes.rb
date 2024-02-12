Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'actives#index'
  resources :actives do 
    resources :comments
  end
  resources :tags
end
