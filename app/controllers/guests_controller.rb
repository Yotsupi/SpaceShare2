class GuestsController < ApplicationController
  def show
    @guest = current_guest
  end
  
  def edit
    @guest = current_guest
  end
  
  def update
    guest = current_guest
    guest.update
    redirect_to 
  end
  
end
