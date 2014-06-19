require 'time_diff'
class DashboardController < ApplicationController
 #layout "weddo"

	def index
		@guests_count = Guest.group("name").count
		@guests = Guest.all
		@expenses = Expense.all
		@events = Event.all
		@period = Time.diff(Time.now, Time.new(2014, 10, 18))
  end

	def gifts
		@gifts = GiftList.where(event_id: params[:event_id]).page(params[:page]).per(10)
		@event = Event.find(params[:event_id])
		send_data @event.generate_gift_lists_pdf.render, :filename => "x.pdf", :type => "application/pdf", :disposition => 'inline'
	end
end
