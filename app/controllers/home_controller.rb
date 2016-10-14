class HomeController < ApplicationController

  def index
    @volunteer = current_user
  end

end
