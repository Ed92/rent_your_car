class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show
    @booking = Booking.new
    @markers =
      {
        lat: @car.latitude,
        lng: @car.longitude#,
        # infoWindow: { content: render_to_string(partial: "/cars/map_box", locals: { car: car }) }
      }
  end

  def new
    @car = Car.new
  end

  def edit
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.address = current_user.location
    if @car.save
      redirect_to cars_path
    else
      render "new"
    end

  end

  def update
    if @car.update(car_params)
      redirect_to cars_path
    else
      render :edit
    end
  end

  def destroy
    if @car.destroy
      redirect_to cars_path
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit("make", "rental_rate", "description", "photo", "available", "user_id")
  end
end
