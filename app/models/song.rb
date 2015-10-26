class Song < ActiveRecord::Base
  belongs_to :user
  has_many :adds, dependent: :destroy
  has_many :users_added, through: :adds, source: :user

  validates :artist, :title, presence: true
  validates :title, length: {minimum: 2}
end
