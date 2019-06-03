class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.references :activity, foreign_key: true
      t.string :accessibility
      t.string :schedules
      t.string :pictures
      t.integer :lat
      t.integer :long

      t.timestamps
    end
  end
end
