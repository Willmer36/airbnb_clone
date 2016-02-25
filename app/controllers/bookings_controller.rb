
class BookingsController < ApplicationController
  before_action :find_booking, only: [ :show, :destroy ]
  before_action :authenticate_user!, only: :create

def create
  @annonce = Annonce.find(params[:annonce_id])
  @booking = current_user.bookings.new(booking_params)
  if @booking.save
    redirect_to @annonce
  else
    render "bookings/new"
  end
end

def new
  @annonce = Annonce.find(params[:annonce_id])
  @booking = @annonce.bookings.new
end

def show
  if current_user == @booking.user
    @price = (@booking.end_date - @booking.start_date).to_i * @booking.annonce.price
  else
    redirect_to "/404.html"
  end
end

def index
  @bookings = current_user.bookings
end

def destroy
  @booking.destroy
end

private

  def booking_params
    params[:booking][:annonce_id] = params[:annonce_id] if params[:booking]
    params.require(:booking).permit(:user_id, :annonce_id, :start_date, :end_date)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

end
