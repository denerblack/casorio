class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.integer :companions_amount
      t.boolean :confirmed

      t.timestamps
    end
  end
end
