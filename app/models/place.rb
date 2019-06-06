class Place < ApplicationRecord
  has_many :activity_places
  has_many :activities, through: :activity_places
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
