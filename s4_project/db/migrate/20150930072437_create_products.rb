class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :image_file
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
