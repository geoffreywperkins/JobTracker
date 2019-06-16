class AddPositionNameToJobApps < ActiveRecord::Migration[5.2]
  def change
    add_column :job_apps, :position_name, :string
  end
end
