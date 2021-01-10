class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
