class ActivityPlace < ApplicationRecord
  belongs_to :activity
  belongs_to :place
end
