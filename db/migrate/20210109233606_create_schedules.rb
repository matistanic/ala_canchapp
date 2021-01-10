class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.text :description
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
