class RemoveColumnPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :activity_id
  end
end
