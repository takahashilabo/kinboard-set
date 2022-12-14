class Response < ApplicationRecord
    has_one_attached :image
    validates :message, length:{maximum: 300}
end
