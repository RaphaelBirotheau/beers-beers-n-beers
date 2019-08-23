class AperosController < ApplicationController
  def index
    if params[:queri].present?
      @aperos = Apero.near(params[:queri],5).geocoded
    # @aperos = Apero.geocoded
      @markers = @aperos.map do |apero|
      {
        lat: apero.latitude,
        lng: apero.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { apero: apero })
      }
      end
    elsif params[:query].present?
      @aperos = Apero.global_search(params[:query]).geocoded
    # @aperos = Apero.geocoded
      @markers = @aperos.map do |apero|
      {
        lat: apero.latitude,
        lng: apero.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { apero: apero })
      }
      end
    else
        @aperos = Apero.all

        @markers = @aperos.map do |apero|
      {
        lat: apero.latitude,
        lng: apero.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { apero: apero })
      }
      end
    end
  end

  def show
    @apero = Apero.find(params[:id])

    @marker = [ { lat: @apero.latitude,lng: @apero.longitude } ]

    @review = Review.new
    @reviews = @apero.reviews

  end

  def new
    @apero = Apero.new
  end

  def create
    @apero = Apero.new(apero_params)
    @apero.user = current_user
    if @apero.save!
      redirect_to apero_path(@apero)
    else
      render :new

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
      @apero.destroy
    else
      flash[:alert] = "You are not authorized to perform this action."
    end
    redirect_to aperos_path
  end

  private

  def apero_params
    params.require(:apero).permit(:date, :description, :place, :capacity, :title, :photo)
  end

  def set_apero
    @apero = Apero.find(params[:id])
  end
end
