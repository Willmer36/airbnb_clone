class AnnoncesController < ApplicationController
before_action :set_annonce, only: [:show, :edit, :update, :destroy]

  def index
    @annonces = Annonce.all
  end

  def show
    @booking = Booking.new
    @annonce = Annonce.find(params[:id])
  end

  def new
    @annonce = Annonce.new
  end

  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.save

    redirect_to annonces_path(@annonce)
  end

  def edit
  end

  def update
    @annonce.update(annonce_params)
    redirect_to annonces_path(@annonce)
  end

  def destroy
    @annonce.destroy
    redirect_to annonces_path
  end

  private

  def set_annonce
     @annonce = Annonce.find(params[:id])
  end

  def annonce_params
    params.require(:annonce).permit(:title, :description, :price, :capacity, :address, :photo, :photo_cache)
  end

end
