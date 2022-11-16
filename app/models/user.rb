class User < ApplicationRecord
    validates :uid, :name, presence: true, uniqueness: true
    validates :pass, presence: true, length:{in: 5..10}, format: /\A[a-zA-Z0-9]+\z/
end
