# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :projects do
    resources :tickets
  end

  root to: 'projects#index'
end
