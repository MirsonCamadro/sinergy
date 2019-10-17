Rails.application.routes.draw do
  get 'communities/index'
  get 'acts/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations:
    "users/registrations" }
  root to: "communities#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
