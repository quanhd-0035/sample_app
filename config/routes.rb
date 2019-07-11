# frozen_string_literal: true

Rails.application.routes.draw do
  root "static_pages#home"
  get "sessions/new"
  get "static_pages/home"
  get "static_pages/help"
  get "static_pages/about"
  get "static_pages/contact"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users
  resources :account_activations, only: :edit
  resources :password_resets, only: %i(new create edit update)
end
