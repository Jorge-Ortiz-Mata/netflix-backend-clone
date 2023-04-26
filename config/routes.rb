Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      delete 'access_token/delete', to: 'access_tokens#destroy'
      resources :users, only: %i[create update destroy]
      get "sessions/validate/email", to: "sessions#validate_email"
    end
  end
end
