class FavoritesPlacesController < ApplicationController
  def index
    @favorite_places = FavoritePlace.all
  end

  def create
    @favorite_places = FavoritePlace.new(user: current_user, places: params[:id])
  end
end
