class Host::ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all.where(:space_id == params[:space_id])
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
  end

  def update
  end

end
