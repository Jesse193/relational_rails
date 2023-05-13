class CreateFlavors < ActiveRecord::Migration[7.0]
  def change
    create_table :flavors do |t|
      t.string :flavor
      t.boolean :nut_free
      t.integer :calories
      t.references :shops, null: false, foreign_key: true

      t.timestamps
    end
  end
end
