class ReservationsController < ApplicationController
  before_action :load_restaurant, except: [:destroy]
  before_action :ensure_logged_in, only: [:create, :destroy]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      redirect_to restaurants_url, notice: "reservation created successfully"
    else
      render "reservations/new"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to user_path(:id), notice: "Reservation deleted successfully"
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :restaurant_id, :date, :time, :party_size)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
