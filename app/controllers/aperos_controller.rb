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
    @apero.user = current_user
    if @apero.save
      redirect_to apero_path(@apero)
    else render :new
    end
  end

  def edit
    @apero = Apero.find(params[:id])
  end

  def update
    @apero = Apero.find(params[:id])
    if @apero.user == current_user
      @apero.update(apero_params)
      redirect_to apero_path(@apero)
    else
      flash[:alert] = "You are not authorized to perform this action."
    end
  end

  def destroy
    @apero = Apero.find(params[:id])
    if @apero.user == current_user
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
