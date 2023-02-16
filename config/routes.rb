Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
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
