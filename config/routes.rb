Rails.application.routes.draw do

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      # Movies routes.
      resources :movies


      # Access Tokens routes.
      delete 'access_token/delete', to: 'access_tokens#destroy'

      # User routes
      resources :users, only: %i[create update destroy]

      # Sessions routes
      post "sessions/create", to: "sessions#create"
      get "sessions/validate/email", to: "sessions#validate_email"
    end
  end
end
