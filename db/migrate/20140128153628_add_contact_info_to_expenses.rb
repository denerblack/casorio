class AddContactInfoToExpenses < ActiveRecord::Migration
  def change
		add_column :expenses, :contact_info, :text
  end
end
