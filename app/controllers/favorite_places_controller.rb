class FavoritePlacesController < ApplicationController
  def index
    @favorite_places = FavoritePlace.all
  end

  def create
    @favorite_place = FavoritePlace.new(user: current_user, places: params[:id])
  end
end
