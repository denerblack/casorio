class AddCheckedToGiftLists < ActiveRecord::Migration
  def change
    add_column :gift_lists, :checked, :boolean
  end
end
