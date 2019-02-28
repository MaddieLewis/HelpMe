class BookingsController < ApplicationController
  # index
  def index
    # need to only show pending or confirmed booking belonging to the user that are yet to happen
    @bookings = Booking.where(user: current_user).order(created_at: :desc)
  end

  # show
  def show
    @booking = Booking.find(params[:id])
    @task = @booking.task
    @user = @booking.user
    @task_owner = @task.user
  end

  # new
  def new
    @booking = Booking.new
  end

  # create
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.task = Task.find(params[:task_id])
    if @booking.save
      redirect_to task_booking_path(@booking.task, @booking)
    else
      render :new
    end
  end

  # update
  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to task_booking_path(@booking), notice: 'Booking was successfully updated.'
    else
      render :new
    end
  end

  # edit
  def edit
    @booking = Booking.find(params[:id])
  end

  # destroy
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:message, :time, :status)
  end
end
