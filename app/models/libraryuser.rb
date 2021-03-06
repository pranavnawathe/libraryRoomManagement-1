class Libraryuser < ApplicationRecord
	has_many :bookings, dependent: :destroy
	
	has_secure_password
	validates :name, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

    validates :password_digest, presence: true, length: { minimum: 6 }
end
