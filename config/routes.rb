Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get "about", to: "pages#about"
  get "how_it_works", to: "pages#how_it_works"
  resources :causes, only: [ :index, :show ] do
      resources :tasks, only:  [ :index, :create ] do
        end
      end
end
