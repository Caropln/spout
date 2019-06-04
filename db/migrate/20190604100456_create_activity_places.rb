class CreateActivityPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_places do |t|
      t.references :place, foreign_key: true
      t.references :activity, foreign_key: true
    end
  end
end
