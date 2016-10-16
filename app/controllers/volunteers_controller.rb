class VolunteersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @volunteer = current_user.volunteer
    @donors = Donor.all
  end

  def edit
    @volunteer = Volunteer.find(params[:id])
  end

  def update
    @volunteer = Volunteer.find(params[:id])
    @volunteer.update(volunteer_params)
      flash[:notice] = "Your profile details were successfully updated!"
      redirect_to volunteer_path
  end

  private
  def volunteer_params
    params.require(:volunteer).permit(:name, :first_name, :last_name, :phone, :address, :city, :state, :zip, :user_id)
  end

end
