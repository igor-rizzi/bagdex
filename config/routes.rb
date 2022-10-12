Rails.application.routes.draw do
  resources :types
  resources :bagmons
  devise_for :users
  root to: "users/sign_in"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
