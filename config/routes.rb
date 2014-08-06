Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resources :dashboards, only: [:show], as: :dashboard do
   resources :users, only: [:edit, :update]
  end

  get "/sign_up", to: "users#new"
  get "/sign_in", to: "sessions#new"

  root to: "dashboards#show"
end
