class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    @booking.price = @car.rental_rate * (params[:booking]["end_date(3i)"].to_i  - params[:booking]["start_date(3i)"].to_i)
    authorize @booking
    if @booking.save
      redirect_to profile_path(current_user)
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
    @car = Car.new
    raise
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
