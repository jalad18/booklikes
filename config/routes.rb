Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/fetch_users_likes', to: 'users#fetch_users_likes'
  get '/favorite_books', to: "users#fetch_favorite_books"
end
