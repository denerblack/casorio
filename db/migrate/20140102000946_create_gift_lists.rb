class CreateGiftLists < ActiveRecord::Migration
  def change
    create_table :gift_lists do |t|
      t.string :name
      t.string :brand

      t.timestamps
    end
  end
end
