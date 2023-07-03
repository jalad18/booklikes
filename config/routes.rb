Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/fetch_users_likes', to: 'likes#fetch_users_likes'
  get '/favorite_books', to: "books#fetch_favorite_books"
  get '/user_name', to: "users#fetch_user_name"
  get '/fetch_book', to: "books#fetch_book_name"
  get '/fetch_users', to: "users#fetch_all_users"
  get '/create_users', to: "users#create"
  get '/create_books', to: "books#create"
  get '/create_likes', to: "likes#create"
  get '/fetch_likes', to: "likes#fetch_all_likes"
  get '/fetch count', to: "likes#fetch_likes_count"
  get '/book_count', to: "books#fetch_book_count"
  get '/user_count', to: "users#count_user"
  get '/likes_delete', to: "likes#destroy_likes"
  get '/users_delete', to: "users#destroy_users"
  get '/books_delete', to: "books#destroy_books"
end
