Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :edit, :update] do
    resources :animals, only: [:new, :create, :edit, :update, :index]
    resources :adoptions, only: [:show]
  end

  resources :animals, only: [:show, :destroy] do
    resources :adoptions, only: [:new, :create]
  end
  
  resource :search, only: [:show]

  get "/sign_up", to: "users#new"
  get "/sign_in", to: "sessions#new"
  get "/", to: "dashboards#show", as: :dashboard
  root to: "dashboards#show"
end
