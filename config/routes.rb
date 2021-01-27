Rails.application.routes.draw do
  resources :events
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :users, :only => [:show]
  resources :schedules
  resources :places
  resources :sports

  root to: "sports#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
