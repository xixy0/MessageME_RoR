class User < ApplicationRecord
    validates :username,
        presence: true,
        length: {minimum:5 , maximum:25},
        uniqueness: true
    
    has_secure_password
    has_many :messages
end