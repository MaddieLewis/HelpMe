class BookingsController < ApplicationController
  # index
  def index
    # need to only show pending or confirmed booking belonging to the user that are yet to happen
    @bookings = Booking.where(user: current_user)
  end

  # show
  def show
    @booking = Booking.find(params[:id])
  end

  # new
  def new
    @booking = Booking.new
  end

  # create
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.task = params[:task_id]
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  # # update
  # def update
  #   @booking = Booking.find(params[:id])
  #   if current_user.id == @booking.task.user_id
  #     @booking.confirmed
  #   end
  # end

  # # edit
  # def edit
  # end

  # destroy
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:bookings).permit(:confirmed, :task_id)
  end
end