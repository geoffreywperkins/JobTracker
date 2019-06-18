class ChangeSubmitDateToBeDateInJobApps < ActiveRecord::Migration[5.2]
  def change
  	change_column :job_apps, :submit_date, :date
  end
end
