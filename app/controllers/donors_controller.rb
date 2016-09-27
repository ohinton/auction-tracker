class DonorsController < ApplicationController

  def index
    @donors = Donor.all
  end

  def show
    @donor = Donor.find(params[:id])
  end

  def new
    @donor = Donor.new
    @user = current_user
    @volunteer = Volunteer.where(user_id: current_user).first
  end

  def create
    @donor = Donor.new(donor_params)
    if @donor.save
      flash[:notice] = "Donor successfully added!"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @donor = Donor.find(params[:id])
  end

  def update
    @donor = Donor.find(params[:id])
    if @donor.update(donor_params)
      flash[:notice] = "Donor successfully updated!"
      redirect_to donors_path
    else
      render :edit
    end
  end

  def destroy
    @donor = Donor.find(params[:id])
    @donor.destroy
    redirect_to donors_path
  end

  private
  def donor_params
    params.require(:donor).permit(:name, :phone, :email, :address, :city, :state, :zip)
  end
end
