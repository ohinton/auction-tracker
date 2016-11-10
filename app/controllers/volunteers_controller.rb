class VolunteersController < ApplicationController
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]

  before_action :authenticate_user!

  def show
    @user = current_user
    @volunteer = @user.volunteer
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
    params.require(:volunteer).permit(:name, :first_name, :last_name, :phone, :address, :city, :state, :zip, :user_id, :photo)
  end
  
  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
  end

end
