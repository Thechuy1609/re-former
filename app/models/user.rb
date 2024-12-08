class User < ApplicationRecord
validates :username, :email, :password, presence: true
validates :username, length: { minimum: 4 }
validates :password, length: { in: 6..20 }
validates :username, :email, :password, uniqueness: true
end
