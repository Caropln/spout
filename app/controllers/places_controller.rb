class PlacesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:show]

  def index
    if params[:address]
      @places = Place.near(params[:address], params[:radius] || 2).where.not(latitude: nil, longitude: nil)

      if @places.empty?
        @places = Place.where.not(latitude: nil, longitude: nil)
      end

    else
      @places = Place.where.not(latitude: nil, longitude: nil)
    end

    @markers = @places.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        activity: place.activities.first&.name,
        id: place.id,
        # infowindow: render_to_string(partial: "infowindow", locals: { place: place })
        # image_url: helpers.asset_url('pin-park.png')
      }
    end
  end

  def show
    @place = Place.find params[:id]
    @activity = params[:activity] || "Parc"
    @markers = [
      {
        show: true,
        lat: @place.latitude,
        lng: @place.longitude,
        activity: @place.activities.first&.name,
        id: @place.id
        # name: @place.name,
        # infowindow: render_to_string(partial: "infowindow", locals: { place: @place })
      }
    ]

    @review = Review.new

    @favorite_place = FavoritesPlace.new

  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
  end
end
