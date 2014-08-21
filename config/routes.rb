Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :edit, :update] do
    resources :animals, only: [:new, :create, :edit, :update]
  end

  resources :animals, only: [:show, :destroy, :index] do
    resources :adoptions, only: [:new, :create]
  end
 
  resource :search, only: [:show]
  resources :payments, only: [:new, :create]

  resources :adoptions, only: [:index, :show, :destroy] do
    resources :feedings, only: [:create]
    resources :plays, only: [:create]
    resources :trainings, only: [:create]
    resources :sleeps, only: [:create]
  end

  get "/sign_up", to: "users#new"
  get "/sign_in", to: "sessions#new"
  get "/", to: "dashboards#show", as: :dashboard
  root to: "dashboards#show"
end
