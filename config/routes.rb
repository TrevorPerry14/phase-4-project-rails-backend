Rails.application.routes.draw do
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  resources :drivers, only: [:index, :show, :create, :destroy, :update]
  resources :tracks, only: [:index, :show, :create, :update, :destroy]
  resources :time_trials, only: [:index, :create]

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy" 
end

