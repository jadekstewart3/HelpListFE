Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "welcome#show"
<<<<<<< Updated upstream
=======

  get "/register", controller: "users", to: "users#new"
  get "/register", controller: "users", to: "users#create"
  get "/dashboard", controller: "users", to: "users#show"
  get "/wishlist", controller: "users", to: "users#wishlist"
  # resources :users, only: [:new, :create, :show] do
  #   resources :wishlists, only: [:new, :create, :show, :edit, :update]
  # end

  get '/login', to: "users#login_form"
  post '/login', to: "users#login_user"
>>>>>>> Stashed changes
end
