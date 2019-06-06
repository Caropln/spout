class FavoritePlacesController < ApplicationController

  def index
    @favorites_places = FavoritePlaces.all
  end

  def create
    @favorite_place = FavoritePlaces.new(user: current_user, places: params[:id])
  end

end
