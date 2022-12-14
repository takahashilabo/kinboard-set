class Response < ApplicationRecord
    has_one_attached :image
    has_many :likes
    has_many :dislikes
    has_many :users
    has_many :like_users, through: :likes, source: :user
    has_many :dislike_users, through: :dislikes, source: :user
end
