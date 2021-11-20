class Host::ReservationsController < ApplicationController
  before_action :authenticate_host!

  def index
    @space = Space.find(params[:space_id])
    @reservations = Reservation.all.where(space_id: params[:space_id]).where(is_active: true)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
  end

  def update
  end

end
