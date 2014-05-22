class AddGuestNameToGiftLists < ActiveRecord::Migration
  def change
    add_column :gift_lists, :guest_name, :string
  end
end
