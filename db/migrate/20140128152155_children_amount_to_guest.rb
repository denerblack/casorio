class ChildrenAmountToGuest < ActiveRecord::Migration
  def change
		add_column :guests, :children_amount, :integer
  end
end
