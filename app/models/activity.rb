class Activity < ApplicationRecord
  belongs_to :place, optional: true
end
