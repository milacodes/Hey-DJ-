class User < ActiveRecord::Base
  	has_secure_password
  	has_many :songs
  	has_many :adds, dependent: :destroy
  	has_many :songs_added, through: :adds, source: :song


	EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  	validates :name, :email, presence: true
  	validates :email, confirmation: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
end
