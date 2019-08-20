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

  private

  def apero_params
    params.require(:apero).permit(:date, :description, :place, :rating)
  end

  def set_apero
    @apero = Apero.find(params[:id])
  end
end
