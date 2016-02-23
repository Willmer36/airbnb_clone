class AnnoncesController < ApplicationController
  def index
    @annonces = Annonce.all
  end

  def show
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

  def update
    @annonce = Annonce.find(params[:id])
    @annonce.update(annonce_params)
    redirect_to annonces_path(@annonce)
  end

  def edit
    @annonce = Annonce.find(params[:id])
  end

  def destroy
    @annonce = Annonce.find(params[:id])
    @restaurant.destroy
    redirect_to annonces_path
  end

  private

  def annonce_params
    params.require(:annonce).permit(:title, :descrition, :edit)
  end

end
