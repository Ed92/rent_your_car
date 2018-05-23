class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    @booking.price = @car.rental_rate * (params[:booking]["end_date(3i)"].to_i  - params[:booking]["start_date(3i)"].to_i)
    if @booking.save
      redirect_to cars_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
