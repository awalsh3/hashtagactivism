Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :actions, only: [ :index, :show, :create ] do
          end
      collection do
        get "dashboard"
        post "store_tasks"
      end
    end

  root "pages#home"
  get "about", to: "pages#about"
  get "how_it_works", to: "pages#how_it_works"

  get '/causes/:id/choose_cause', to: 'causes#choose_cause',as: 'choose_cause'
  # get '/causes/:id/choose_time', to: 'causes#choose_time',as: 'choose_time'

  resources :causes, only: [ :index, :show ] do
      resources :tasks, only:  [ :index, :create ] do
        end
      end
end
