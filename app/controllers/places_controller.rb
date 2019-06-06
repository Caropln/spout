class PlacesController < ApplicationController
  def index
    @places = Place.where.not(latitude: nil, longitude: nil)
    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        activity: place.activities.first&.name,
        infowindow: render_to_string(partial: "infowindow", locals: { place: place })
        # image_url: helpers.asset_url('pin-park.png')
      }
    end
  end
end
