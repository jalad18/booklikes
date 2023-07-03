class LikesController < ApplicationController

    def fetch_users_likes
        @user = User.find(params[:id])
        @likes = @user.likes
        render json: {message: "Likes", likes: @likes} 
    end

    def fetch_all_likes
        @likes = Like.all

        render json: {all_likes: @likes}
    end

    def fetch_likes_count
        @likes = Like.all
        if @likes.count < 0
            render json: {message: "No likes found"}
        else
            render json: {message: "Count of likes is", counting: @likes.count}
        end
    end

    def new
        @likes = Like.new
    end

    def create
        @likes = Like.new(set_params)
        if @likes.save!
            render json: {message: "New Like created", like: @likes}
        else
            render json: {message: @likes.errors}
        end
    end

    def destroy_likes
        @likes = Like.find(params[:id])
        @likes.destroy 
        render json: {message: "Message successfully deleted!"}
    end

    private
    def set_params
        params.permit(:user_id, :book_id)
    end
end
