class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :user_name, presence: true, uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { minimum: 2, maximum: 75 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 7, maximum: 40 }
end