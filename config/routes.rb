Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "home#index"
  get "purchases/prepurchase/:quantity&:product", to: "purchases#prepurchase"
  resources :providers, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :purchases
  get "/:category", to: "home#index"
  devise_for :users, controllers: {registrations: "registrations"}
end
