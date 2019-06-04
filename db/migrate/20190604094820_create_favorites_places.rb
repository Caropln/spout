class CreateFavoritesPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites_places do |t|
      t.references :place, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
