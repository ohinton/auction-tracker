class DonorsController < ApplicationController
  def new
    @volunteer = Volunteer.find(params[:volunteer_id])
    @donor = @volunteer.donors.new
  end

  def show
    @stories = Volunteer.all
    @donors = Donor.all
  end

  def create
    @volunteer = Volunteer.find(params[:volunteer_id])
    @donor = @volunteer.donors.new(donor_params)
    if @donor.save
      redirect_to volunteer_path(@donor.volunteer)
    else
      render :new
    end
  end

  def edit
    @volunteer = Volunteer.find(params[:volunteer_id])
    @donor = @volunteer.donors.find(params[:id])
    @rand = @donor.image
  end

  def update
    @volunteer = Volunteer.find(params[:volunteer_id])
    @donor = @volunteer.donors.find(params[:id])
      if @donor.update(donor_params)
        redirect_to volunteer_path(@donor.volunteer)
      else
        render :edit
      end
    end

  def destroy
    @volunteer = Volunteer.find(params[:volunteer_id])
    @donor = Donor.find(params[:id])
    @donor.destroy
    redirect_to volunteer_path(@donor.volunteer)
  end

  private
  def donor_params
    params.require(:donor).permit(:name, :phone, :email, :address, :city, :state, :zip)
  end
end
