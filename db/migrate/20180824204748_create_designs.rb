class CreateDesigns < ActiveRecord::Migration[5.2]
  def change
    create_table :designs do |t|
      t.string :name
      t.text :description
      t.float :price
      t.boolean :active, default: false
      t.string :dimensions
      t.integer :quantity

      t.timestamps
    end
  end
end
