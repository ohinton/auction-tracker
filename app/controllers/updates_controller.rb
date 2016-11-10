class UpdatesController < ApplicationController

  def new
    @update = Update.new
    @donor = Donor.find(params[:donor_id])
    @volunteer = current_user.volunteer
  end

  def create
    @donor = Donor.find(params[:donor_id])
    @update = @donor.updates.create(update_params)
    @volunteer = current_user.volunteer
    redirect_to volunteer_path(@volunteer)
  end

  private
  def update_params
    params.require(:update).permit(:note, :date, :donor_id)
  end
  
end
