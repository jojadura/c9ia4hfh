class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :title
      t.text :description
      t.integer :beds
      t.integer :guests

      t.timestamps null: false
    end
    add_column :rooms, :price_per_night, :float
  end
end
