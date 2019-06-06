class Place < ApplicationRecord

  has_many :activity_places
  has_many :activities, through: :activity_places
  has_many :activity
  has_many :reviews
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
