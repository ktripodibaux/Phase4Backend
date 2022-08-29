Rails.application.routes.draw do
  get 'sessions/create'
  delete '/logout', to: 'sessions#destroy'
  resources :comments
  resources :posts
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/login", to: "sessions#create"
  get "users/posts/:id", to: "users#posts"

end
