class HomeController < ApplicationController
  layout "weddo"
	def index
		@events = Event.all
		@period = Time.diff(Time.now, Time.new(2014, 10, 18))
  end

  def gifts
		@gifts = GiftList.where(event_id: params[:event_id]).page(params[:page]).per(50)
		@event = Event.find(params[:event_id])
  end

  def place
  end
end
