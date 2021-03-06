# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'purchases/prepurchase/:quantity&:product', to: 'purchases#prepurchase'
  resources :providers, only: %i[index show]
  resources :products, only: %i[index show]
  resources :purchases, except: %i[edit update destroy show]
  get '/:category', to: 'home#index'
  devise_for :users, controllers: { registrations: 'registrations' }
end
