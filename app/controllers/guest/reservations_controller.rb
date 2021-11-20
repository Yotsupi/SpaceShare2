class Guest::ReservationsController < ApplicationController
  def new
    @space = Space.find(params[:space_id])
    @reservation = Reservation.new
  end

  def confirm
    @reservation = Reservation.new(reservation_params)
    @space = Space.find(params[:space_id])
    if @reservation.invalid?
			render :new
		end
  end

  def create
    reservation = Reservation.new(reservation_params)
    reservation.save
    redirect_to guest_space_thanks_path
  end

  def thanks
  end

  def index
    @reservations = Reservation.all.where(guest_id: current_guest.id)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def cancel
    reservation = Reservation.find(params[:id])
    reservation.update(is_active: false)
    redirect_to guest_reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:guest_id,:space_id, :people,:use_date, :start_time, :end_time, :hourly_rate, :is_active, :billing_amount)
  end

end
