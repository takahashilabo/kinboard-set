class User < ApplicationRecord
    validates :uid, :name, presence: true, uniqueness: true
    validates :pass, presence: true, length: { minimum: 8 }
    has_many :likes
    has_many :dislikes
    has_many :responses
    has_many :like_responses, through: :likes, source: :response
    has_many :dislike_responses, through: :dislikes, source: :response
end
