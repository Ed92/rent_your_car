class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = policy_scope(Car)
    authorize @cars

    if params[:address].present?
      @cars = Car.near(params[:address], 100)
    else
      @cars = policy_scope(Car)
    end


  end

  def show
    @car = Car.find(params[:id])
    @user = User.find(@car.user_id)
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
    authorize @car
  end

  def edit

  end

  def create
    raise
    @car = Car.new(car_params)
    @car.user = current_user
    @car.address = current_user.location
    authorize @car

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
    authorize @car
  end

  def destroy
    if @car.destroy
      redirect_to cars_path
    end
    authorize @car
  end

  private

  def set_car
    @car = Car.find(params[:id])
    authorize @car
  end

  def car_params
    params.require(:car).permit("make", "rental_rate", "description", "photo", "available", "user_id")
  end
end
