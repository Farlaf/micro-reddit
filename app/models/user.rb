class User < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3}
    validates :email, uniqueness: true

    has_many :posts
    has_many :comments
end
