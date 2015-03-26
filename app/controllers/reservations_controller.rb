class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    reservation = Reservation.create(reservation_params)
    redirect_to reservation_path(reservation)
  end

private
  def reservation_params
    params.require(:reservation).permit(:table_id, :client_id, :res_time)
  end

end