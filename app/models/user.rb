class User < ApplicationRecord
    has_many :likes, dependent: :destroy
    has_many :fav_books, through: :likes, source: :book
end
