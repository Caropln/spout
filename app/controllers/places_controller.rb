class PlacesController < ApplicationController
  def index
    @places = Place.where.not(latitude: nil, longitude: nil)
    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        infowindow: render_to_string(partial: "infowindow", locals: { place: place })
      }
    end
  end
end
