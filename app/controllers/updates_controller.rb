class UpdatesController < ApplicationController

  def new
    @update = Update.new
    @donor = Donor.find(params[:donor_id])
    @volunteer = current_user.volunteer

  end

  def create
    @donor = Donor.find(params[:donor_id])
    @update = @donor.updates.new(update_params)
    if @update.save
      flash[:notice] = "Update successfully added!"
      respond_to do |format|
        format.html { redirect_to volunteer_path }
        format.js
      end
    else
      render :new
    end
  end

  private
  def update_params
    params.require(:update).permit(:note, :date, :donor_id)
  end
end
