Rails.application.routes.draw do
  get 'expenses/index'
  get 'communities/index'
  get 'acts/index'
  get 'fees/index'

  resources :acts, only: [:index, :show]

  resources :fees, only: :index do
    resources :orders, only: :create
  end
  
  resources :orders, only: :index do
  	collection do
  		get 'clean'
  	end
  end

  resources :billings, only: [] do
    collection do
      get 'pre_pay'
      get 'execute'
    end
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations:
    "users/registrations" }
    
  root to: "communities#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
