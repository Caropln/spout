class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :favorites_places, dependent: :destroy
  has_many :places, through: :favorites_places, dependent: :destroy

  validates :username, :firstname, :lastname, :address, :tel, :birth_date, presence: true

  mount_uploader :avatar, PhotoUploader

end
