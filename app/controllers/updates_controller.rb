class UpdatesController < ApplicationController

  def index
    @updates = Update.all
  end

  def show
    @update = Update.find(params[:id])
  end

  def new
    @update = Update.new
    @user = current_user
    @volunteer = Volunteer.where(user_id: current_user).first
    @donor = Donor.where(volunteer_id: @volunteer.id).last

  end

  def create
    @update = Update.new(update_params)
    if @update.save
      flash[:notice] = "Update successfully added!"
      redirect_to updates_path
    else
      render :new
    end
  end

  private
  def update_params
    params.require(:update).permit(:note, :date, :volunteer_id, :donor_id)
  end
end
