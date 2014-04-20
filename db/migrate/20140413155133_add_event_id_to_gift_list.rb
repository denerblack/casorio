class AddEventIdToGiftList < ActiveRecord::Migration
  def change
		add_column :gift_lists, :event_id, :integer
  end
end
