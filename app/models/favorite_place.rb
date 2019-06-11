class FavoritePlace < ApplicationRecord
  belongs_to :place, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
