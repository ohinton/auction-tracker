class VolunteersController < ApplicationController
  def index
    @volunteers = Volunteer.all
    @donors = Donor.all
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      flash[:notice] = "Volunteer successfully added!"
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
      flash[:notice] = "Volunteer successfully updated!"
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
    params.require(:volunteer).permit(:name, :phone, :email, :address, :city, :state, :zip)
  end

end
