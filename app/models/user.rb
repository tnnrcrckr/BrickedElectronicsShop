class User < ApplicationRecord
    validates :name, presence: true, length:{ maximum: 50 }
    
    VALID_EMAIL_REGEX
    validates :email, presence: true, length: { maximum: 100 },
        format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
        
    has_secure_password
    validates :password, presence: true, length: {minimum: 10}
end
