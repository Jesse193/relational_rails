Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "welcome#index"
  get "/shops", to: "shops#index"
  get "/shops/new", to: "shops#new"
  get "/shops/:id", to: "shops#show"
  post "/shops", to: "shops#create"
  get "/shops/:shop_id/flavors", to: "shop_flavors#index"
  get "/flavors", to: "flavors#index"
  get "/flavors/:id", to: "flavors#show"
end
