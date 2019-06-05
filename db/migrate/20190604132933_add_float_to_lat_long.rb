class AddFloatToLatLong < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :lat
    remove_column :places, :long
    add_column :places, :lat, :float
    add_column :places, :long, :float
  end
end
