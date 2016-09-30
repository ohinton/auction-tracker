class DonorsController < ApplicationController

  def index
    @donors = Donor.all
    @hash = Gmaps4rails.build_markers(@donors) do |donor, marker|
      marker.lat donor.latitude
      marker.lng donor.longitude
      marker.infowindow donor.name
    end
  end

  def show
    @donor = Donor.find(params[:id])
  end

  def new
    @volunteer = current_user.volunteer
    @donor = Donor.new
  end

  def create
    @volunteer = current_user.volunteer
    @donor = @volunteer.donors.new(donor_params)
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
    params.require(:donor).permit(:name, :business_phone, :business_email, :address, :city, :state, :zip, :contact_person, :contact_person_phone, :contact_person_email, :donation_request_link, :volunteer_id)
  end
end
