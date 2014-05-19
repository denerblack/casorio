require 'time_diff'
class DashboardController < ApplicationController
 # layout "application"

	def index
		@guests_count = Guest.group("name").count
		@guests = Guest.all
		@expenses = Expense.all
		@events = Event.all
		@period = Time.diff(Time.now, Time.new(2014, 10, 18))
		puts @period
  end

	def gifts
		@gifts = GiftList.where(event_id: params[:event_id]).page(params[:page]).per(10)
		@event = Event.find(params[:event_id])

	end
end
