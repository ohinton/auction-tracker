class HomeController < ApplicationController

  def index
    @volunteer = current_user
    if current_user
      redirect_to volunteer_path(@volunteer)
    end
  end

end
