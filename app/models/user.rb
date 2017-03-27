class User < ApplicationRecord
    validates :name, presence: true, length:{ maximum: 50 }
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 100 },
        format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
        
    has_secure_password
    validates :password, presence: true, length: {minimum: 10}
    
    
    attr_accessor :name, :email

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
  
end
