class PagesController < ApplicationController
  def home
        @aperos = Apero.geocoded

    @markers = @aperos.map do |apero|
      {
        lat: apero.latitude,
        lng: apero.longitude,
        infoWindow: render_to_string(partial: "aperos/info_window", locals: { apero: apero })
      }
    end
  end
end
