Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/", to: "welcome#index"
  get "/shops", to: "shops#index"
  get "/shops/new", to: "shops#new"
  get "/shops/:id", to: "shops#show"
  get "/shops/:id/edit", to: "shops#edit"
  patch "/shops/:id", to: "shops#update"
  post "/shops", to: "shops#create"
  get "/shops/:shop_id/flavors", to: "shop_flavors#index"
  get "/flavors", to: "flavors#index"
  get "/shops/:shop_id/flavors/new", to: "shop_flavors#new"
  get "/flavors/:id", to: "flavors#show"
  post "/shops/:shop_id/flavors", to: "shop_flavors#create"
  get "/flavors/:id/edit", to: "flavors#edit"
  patch "/flavors/:id", to: "flavors#update"

end
