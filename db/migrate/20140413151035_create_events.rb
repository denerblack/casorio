class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :address
      t.date :date

      t.timestamps
    end
  end
end
