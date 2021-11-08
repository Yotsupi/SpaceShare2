class Guest::ReservationsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
  end

  def confirm
  end

end
