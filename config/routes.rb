Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "join", to: "users#new"
  get "login", to: "sessions#new"
  get "dash", to: "dashboard#index"
  
  resource :user, only: [:new, :create]
  resource :session, only: [:create, :destroy]
  
  resources :blog_posts, only: [:new, :show, :create, :edit, :update, :destroy]

end
