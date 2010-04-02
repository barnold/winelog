class CreateWines < ActiveRecord::Migration
  def self.up
    create_table :wines do |t|
      t.integer :batch_number
      t.string :name
      t.datetime :started
      t.timestamps
    end
  end
  
  def self.down
    drop_table :wines
  end
end
