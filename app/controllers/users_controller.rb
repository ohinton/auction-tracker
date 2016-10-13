class UsersController < ApplicationController

  @user = current_user
  @volunteer = @user.volunteer

  def edit
    @user = current_user
    @volunteer = @user.volunteer
  end

end
