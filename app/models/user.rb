class User < ApplicationRecord
  validates :username, presence: true, length: { in: 1..12 }
  validates :email, presence: :true, length: { minimum: 6 }
  validates :password, presence: true, length: { minimum: 4 }

  has_many :posts
  has_many :comments
end
