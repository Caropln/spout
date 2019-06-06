class ChangeActivitiesTypeToName < ActiveRecord::Migration[5.2]
  def change
        rename_column :activities, :type, :name
  end
end
