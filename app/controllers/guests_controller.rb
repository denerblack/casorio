class GuestsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_guest, only: [:show, :edit, :update, :destroy]

  # GET /guests
  # GET /guests.json
  def index
		#@guests = []
#		if params[:search].present?

			#@guests = Guest.by_name(params[:search][:name]).page(params[:page]).per(10) if params[:search][:name].present?
#			by_name = guests = Guest.by_name(params[:search][:name]) if params[:search][:name].present?
#			by_user_id = Guest.where(user_id: params[:search][:user_id]) if params[:search][:user_id].present?
#			@guests = (by_name.nil? ? by_name.where(user_id: params[:search][:user_id]) : Guest.where(user_id: params[:search][:user_id])).page(params[:page]).per(10)
			#@guests.page(params[:page]).per(10)
#		else
#			@guests = Guest.page(params[:page]).per(10)
#		end
			@guests = Guest.all #page(params[:page]).per(10)
			@guests = @guests.by_name(params[:name]) if params[:name].present?
			@guests = @guests.where(user_id: params[:user_id]) if params[:user_id].present?
			@guests = @guests.page(params[:page]).per(10)
		#@guests
  end

  # GET /guests/1
  # GET /guests/1.json
  def show
  end

  # GET /guests/new
  def new
    @guest = Guest.new(user_id: current_user)
  end

  # GET /guests/1/edit
  def edit
  end

  # POST /guests
  # POST /guests.json
  def create
    @guest = Guest.new(guest_params)

    respond_to do |format|
      if @guest.save
        format.html { redirect_to @guest, notice: 'Guest was successfully created.' }
        format.json { render action: 'show', status: :created, location: @guest }
      else
        format.html { render action: 'new' }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guests/1
  # PATCH/PUT /guests/1.json
  def update
    respond_to do |format|
      if @guest.update(guest_params)
        format.html { redirect_to @guest, notice: 'Guest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guests/1
  # DELETE /guests/1.json
  def destroy
    @guest.destroy
    respond_to do |format|
      format.html { redirect_to guests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest
      @guest = Guest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_params
      params.require(:guest).permit(:name, :companions_amount, :children_amount, :confirmed)
    end
end
