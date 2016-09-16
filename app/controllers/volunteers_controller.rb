class VolunteersController < ApplicationController

  def index
    @volunteer = current_user
  end

  def show
    @volunteer = Volunteer.where(user_id: params[:id]).first
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      flash[:notice] = "Your profile details were successfully added!"
      redirect_to volunteers_path
    else
      render :new
    end
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
