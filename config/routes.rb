Rails.application.routes.draw do
  get 'welcome/index'
  namespace :admins_backoffice do
    end
  namespace :users_backoffice do
    end
  devise_for :admins
  resources :types
  resources :bagmons
  devise_for :users
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
