Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :edit, :update] do
    resources :animals, only: [:new, :create, :edit, :update, :index]
  end

  resources :animals, only: [:show, :destroy]
  resource :search, only: [:show]

  get "/sign_up", to: "users#new"
  get "/sign_in", to: "sessions#new"
  get "/", to: "dashboards#show", as: :dashboard
  root to: "dashboards#show"
end
