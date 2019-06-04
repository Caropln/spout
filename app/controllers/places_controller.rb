class PlacesController < ApplicationController
  def index
    @places = Place.where.not(latitude: nil, longitude: nil)
    @markers = @places.map do |place|
      { lat: place.latitude, lng: flat.longitude }
    end
  end
end
