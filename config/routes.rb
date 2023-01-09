# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    root 'application#index'
    resources :states, only: %i[index new create] do
      member do
        patch :make_default
      end
    end

    resources :projects, except: %i[index show]
    resources :users do
      member do
        patch :archive
      end
    end
  end

  devise_for :users

  resources :projects, only: %i[index show edit update] do
    resources :tickets do
      collection do
        post :upload_file
      end
      member do
        patch :watch
      end
    end
  end

  scope path: 'tickets/:ticket_id', as: :ticket do
    resources :comments, only: [:create]
  end

  root to: 'projects#index'
end
