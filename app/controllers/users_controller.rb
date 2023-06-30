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
end
