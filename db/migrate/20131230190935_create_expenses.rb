class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.integer :amount
      t.float :unit_value
      t.string :unit

      t.timestamps
    end
  end
end
