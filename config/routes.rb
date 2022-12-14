# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    get 'application/index'
  end

  devise_for :users

  resources :projects do
    resources :tickets
  end

  root to: 'projects#index'
end
