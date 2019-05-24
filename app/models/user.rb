class User < ApplicationRecord
  has_many :messages
  # vlaidates database username, checks for unique username and checks for case sensitive username and gives min and max required
  validates :username, presence: true, 
            uniqueness: { case_sensitive: false }, 
            length: { minimum: 3, maximum: 15 }
  has_secure_password         
end
