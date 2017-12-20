class CreateRenters < ActiveRecord::Migration[5.1]
  def change
    create_table :renters do |t|
      t.string :address
      t.string :title
      t.string :agency_name
      t.integer :price

      t.timestamps
    end
  end
end
