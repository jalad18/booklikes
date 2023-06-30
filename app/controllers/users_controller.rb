class UsersController < ApplicationController
    def fetch_users_likes
       @user = User.find(params[:id])
       @likes = @user.likes
       render json: {message: "Likes", likes: @likes} 
    end

    def fetch_favorite_books
        @user = User.find(params[:id])
        @fav_books = @user.fav_books
        render json: {fav_books: @fav_books}
    end

    def fetch_user_name
        @user = User.find(params[:id])
        @name = @user.name
        render json: {message:"Name", name: @name}
    end

    def fetch_book_name
        @book = Book.find(params[:id])
        @name = @book.name
        render json: {message:"Book name:", book_name: @name}
    end
end
