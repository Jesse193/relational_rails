class CreateShop < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :hours
      t.boolean :open_year_round
      t.integer :established

      t.timestamps
    end
  end
end
