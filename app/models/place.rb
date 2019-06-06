class Place < ApplicationRecord
  has_many :activity
  has_many :favorites_places, foreign_key: 'place_id'

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
