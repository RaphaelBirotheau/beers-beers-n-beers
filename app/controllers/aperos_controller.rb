class AperosController < ApplicationController
  def index
    @aperos = Apero.all
  end

  def show
    @apero = Apero.find(params[:id])
    # @dose = Dose.new
  end

  def new
    @apero = Apero.new
  end

  def create
    @apero = Apero.new(apero_params)
    @apero.save
    redirect_to apero_path(@apero)
  end

  def edit
    @apero = Apero.find(params[:id])
  end

  def update
    if Apero.user == current_user
      @apero = Apero.find(params[:id])
      @Apero.update(apero_params)
      redirect_to apero_path(@apero)
    else
      flash[:alert] = "You are not authorized to perform this action."
    end
  end

  def destroy
    if Apero.user == current_user
      @restaurant.destroy
    else
      flash[:alert] = "You are not authorized to perform this action."
    end
  end

  private

  def apero_params
    params.require(:apero).permit(:date, :description, :place, :capacity)
  end

  def set_apero
    @apero = Apero.find(params[:id])
  end
end
