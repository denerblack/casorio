class DashboardController < ApplicationController
  def index
		@guests_count = Guest.group("name").count
		@guests = Guest.all
		@expenses = Expense.all	
  end
end
