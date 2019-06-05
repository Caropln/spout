class ChangeNameLatLong < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :longitude, :float
    add_column :places, :latitude, :float
    remove_column :places, :long, :float
    remove_column :places, :lat, :float
  end
end
