# frozen_string_literal: true

Rails.application.routes.draw do
  resources :projects

  root to: 'projects#index'
end
