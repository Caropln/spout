class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, foreign_key: 'review_id'
  has_many :favorites_places, foreign_key: 'place_id'
  validates :username, :firstname, :lastname, :address, :tel, :birth_date, presence: true

  mount_uploader :avatar, PhotoUploader
end
