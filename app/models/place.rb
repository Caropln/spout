class Place < ApplicationRecord

  has_many :favorites_places, dependent: :destroy
  has_many :activity_places, dependent: :destroy
  has_many :activities, through: :activity_places, dependent: :destroy
  has_many :reviews, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
