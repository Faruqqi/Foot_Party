Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :games, only: %i[index show destroy] do
    resources :registration, only: :create
  end
  resources :fields, only: :index do
    resources :games, only: %i[new create]
  end
end
