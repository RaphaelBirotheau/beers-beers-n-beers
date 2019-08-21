class BookingsController < ApplicationController
  def create
    @booking = Booking.new(user: current_user, apero: Apero.find(params[:apero_id]))
    if @booking.save
      redirect_to my_bookings_path
    else
      flash[:alert] = "Not saved"
    end
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
    @aperos = @bookings.map { |booking| booking.apero }

    @markers = @aperos.map do |apero|
      {
        lat: apero.latitude,
        lng: apero.longitude,
        infoWindow: render_to_string(partial: "aperos/info_window", locals: { apero: apero })
      }
    end
  end


end
