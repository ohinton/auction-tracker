class UsersController < ApplicationController

  def edit
    @user = current_user
    @volunteer = @user.volunteer
  end

end
