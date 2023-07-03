class UsersController < ApplicationController
    def new
        @new_user = User.new
    end

    def index
        @users = User.all
    end
    
    def create
        #byebug
        @new_user = User.new(set_params)
        if @new_user.save!
            render json:{message:"New User is created", user: @new_user}
        else
            render json: {message: @new_user.errors}
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(set_params)
            render json: {message: "User Updated!"}
        else
            render json: {message: @user.errors}
        end
    end

    def count_user
        @users = User.all
        if @users.count < 0
            render json: {message:"No user present!"}
        else
            render json: {message: "User count is: ", count: @users.count}
        end
    end

    def fetch_all_users
        @all = User.all
        render json: {message:"All users", names: @all}
    end

    def fetch_user_name
        @user = User.find(params[:id])
        @name = @user.name
        render json: {message:"Name", name: @name}
    end

    def destroy_users
        @users = User.find(params[:id])
        @users.destroy
        render json: {message: "User deleted Successfully!"}
    end

    private

    def set_params
        params.permit(:name,:email)
    end
end
