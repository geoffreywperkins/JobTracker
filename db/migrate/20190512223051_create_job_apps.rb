class CreateJobApps < ActiveRecord::Migration[5.2]
  def change
    create_table :job_apps do |t|
      t.string :company
      t.string :url
      t.text :notes
      t.string :status
      t.datetime :date_last_updated
      t.datetime :submit_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
