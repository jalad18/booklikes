class BooksController < ApplicationController
    def fetch_favorite_books
        @user = User.find(params[:id])
        @fav_books = @user.fav_books
        render json: {fav_books: @fav_books}
    end

    def new
        @new_book = Book.new
    end

    def fetch_book_count
        @books = Book.all
        if @books.count <0
            render json: {message: "No Book present"}
        else
            render json: {message: "Count of book is:", count: @books.count}
        end
    end

    def create
        @new_book = Book.new(set_params)
        if @new_book.save!
            render json: {message: "New book is created.", new_book: @new_book}
        else
            render json: {message: @new_book.errors}
        end
    end

    def fetch_book_name
        @book = Book.find(params[:id])
        @name = @book.name
        render json: {message:"Book name:", book_name: @name}
    end

    def destroy_books
        @books = Book.find(params[:id])
        @books.destroy
        render json: {message: "Book successfully deleted!"}
    end

    private

    def set_params
        params.permit(:name)
    end
end
