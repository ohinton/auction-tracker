class VolunteersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @volunteer = @user.volunteer
  end

  def new
    @volunteer = Volunteer.new
  end

  def show
    @volunteer = Volunteer.where(user_id: params[:id]).first
  end

  def edit
    @volunteer = Volunteer.find(params[:id])
  end

  def update
    @volunteer = Volunteer.find(params[:id])
    if @volunteer.update(volunteer_params)
      flash[:notice] = "Your profile details were successfully updated!"
      redirect_to volunteers_path
    else
      render :edit
    end
  end

  def destroy
    @volunteer = Volunteer.find(params[:id])
    @volunteer.destroy
    redirect_to volunteers_path
  end

  private
  def volunteer_params
    params.require(:volunteer).permit(:name, :first_name, :last_name, :phone, :address, :city, :state, :zip, :user_id)
  end

end
