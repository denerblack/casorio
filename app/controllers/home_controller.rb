class HomeController < ApplicationController
  layout "weddo"
	def index
		@events = Event.all
		@photos = Photo.all
		@period = Time.diff(Time.now, Time.new(2014, 10, 18))
  end

  def gifts
		@gifts = GiftList.where(event_id: params[:event_id]).page(params[:page]).per(20)
		@event = Event.find(params[:event_id])
  end

  def place
  end

#	def update
#		gift = GiftList.find params[:gift_list_id]
#		puts gift.to_json
#		puts params
	  #gift.update(checked: params[:checked])
#	  gift.update!(guest_name: params[:gift_list][:title])

#		respond_to do |format|
#			format.all {render :nothing => true}
#		end
#	end

  def update
		@gift = GiftList.find params[:gift_list_id]

  	respond_to do |format|
    	if @gift.update(guest_name: params[:gift_list][:guest_name])
        format.html { redirect_to @gift, notice: 'Post was successfully updated.' }
      	format.json { head :no_content }
      else
        format.html { render action: 'edit' }
      	format.json { render json: @gift.errors, status: :unprocessable_entity }
     	end
    end
	end
end
