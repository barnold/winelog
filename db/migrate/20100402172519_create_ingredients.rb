class CreateIngredients < ActiveRecord::Migration
  def self.up
    create_table :ingredients do |t|
      t.references :wine
      t.string :name
      t.integer :amount
      t.string :amount_unit
      t.timestamps
    end
  end
  
  def self.down
    drop_table :ingredients
  end
end
