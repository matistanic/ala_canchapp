class AddAddressToPlace < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :address, :text
  end
end
