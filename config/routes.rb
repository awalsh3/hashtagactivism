# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :users do
    post 'add_tasks', on: :member
  end

  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'how_it_works', to: 'pages#how_it_works'

  get '/causes/:id/choose_cause', to: 'causes#choose_cause', as: 'choose_cause'
  # get '/causes/:id/choose_time', to: 'causes#choose_time',as: 'choose_time'

  resources :causes, only: %i[index show] do
    resources :tasks, only: %i[index create] do
    end
  end
end
