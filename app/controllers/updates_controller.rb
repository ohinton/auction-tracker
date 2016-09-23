class UpdatesController < ApplicationController

  def index
    @updates = Update.all
  end

  def show
    @update = Update.find(params[:id])
  end

  def new
    @update = Update.new
    @user = current_user
  end

  def create
    @update = Update.new(update_params)
    if @update.save
      flash[:notice] = "Update successfully added!"
      redirect_to updates_path
    else
      render :new
    end
  end

  private
  def update_params
    params.require(:update).permit(:note, :volunteer_id, :donor_id)
  end
end
