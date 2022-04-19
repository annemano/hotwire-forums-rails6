# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :discussions do
    resources :posts, only: %i[show create edit update destroy], module: :discussions
  end
  root to: 'main#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
