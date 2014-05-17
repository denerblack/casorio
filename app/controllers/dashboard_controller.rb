class DashboardController < ApplicationController
#  layout "application"
	def index
		@guests_count = Guest.group("name").count
		@guests = Guest.all
		@expenses = Expense.all
		@events = Event.all
  end
end
