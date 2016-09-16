class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [ :index ]

  def index
    render "users/sessions/new"
  end

  def show
    @user = User.find(params[:id])
  end




end
