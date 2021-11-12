class Guest::ReservationsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
    @reservation = Reservation.new
  end

  def confirm
    @reservation = Reservation.new(reservation_params)
    @space = Space.find(params[:space_id])
  end

  def create
    reservation = Reservation.new(reservation_params)

    reservation.save
    redirect_to
  end

  private

  def reservation_params
    params.require(:reservation).permit(:people,:use_date, :start_time, :end_time)
  end

end
