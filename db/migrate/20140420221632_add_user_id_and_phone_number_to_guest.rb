class AddUserIdAndPhoneNumberToGuest < ActiveRecord::Migration
  def change
		add_column :guests, :user_id, :integer
		add_column :guests, :phone_number, :string
  end
end
