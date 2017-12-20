class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :restaurant
      t.text :comment

      t.timestamps
    end
  end
end
