class GuestsController < ApplicationController
  
  def show
    @guest = current_guest
  end
  
  def edit
    @guest = current_guest
  end
  
  def update
    guest = current_guest
    guest.update(guest_params)
    redirect_to 
  end
  
  def guest_params
    params.require(:guest).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :email)
  end
  
  
  
end
