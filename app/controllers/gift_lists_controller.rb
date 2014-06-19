class GiftListsController < ApplicationController
  before_action :set_gift_list, only: [:show, :edit, :update, :destroy]
	before_action :set_event, only: [:index, :new, :edit, :show]

  # GET /gift_lists
  # GET /gift_lists.json
  def index
		@gift_lists = GiftList.page(params[:page]).per(20)
  end

  # GET /gift_lists/1
  # GET /gift_lists/1.json
  def show
  end

  # GET /gift_lists/new
  def new
    @gift_list = GiftList.new
  end

  # GET /gift_lists/1/edit
  def edit
  end

  # POST /gift_lists
  # POST /gift_lists.json
  def create
    @gift_list = GiftList.new(gift_list_params)

    respond_to do |format|
      if @gift_list.save
        format.html { redirect_to @gift_list, notice: 'Gift list was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gift_list }
      else
        format.html { render action: 'new' }
        format.json { render json: @gift_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gift_lists/1
  # PATCH/PUT /gift_lists/1.json
  def update
    respond_to do |format|
      if @gift_list.update(gift_list_params)
        format.html { redirect_to @gift_list, notice: 'Gift list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gift_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gift_lists/1
  # DELETE /gift_lists/1.json
  def destroy
    @gift_list.destroy
    respond_to do |format|
      format.html { redirect_to :back}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift_list
      @gift_list = GiftList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gift_list_params
      params.require(:gift_list).permit(:name, :brand, :event_id)
    end

		def set_event
			@event = Event.find params[:event_id]
		end
end
