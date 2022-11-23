class User < ApplicationRecord
    validates :uid, :name, presence: true, uniqueness: true
    validates :pass, presence: true, length: { minimum: 4 }
end
