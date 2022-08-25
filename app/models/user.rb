class User < ApplicationRecord

    has_many :posts
    has_many :comments, through: :posts

    validates :name, uniqueness: true

    validates :password, :name, presence: true

has_secure_password

end
