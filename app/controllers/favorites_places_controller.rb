class FavoritesPlacesController < ApplicationController
  def index
    @favorite_places = current_user.favorites_places.reverse
  end

  def create
    @favorite_place = FavoritesPlace.create!(user: current_user, place_id: params[:place_id])
    redirect_back fallback_location: root_path, notice: 'Ton spot a bien été ajouté aux favoris !'
  end

  def destroy
    @favorite = FavoritesPlace.find(params[:id])
    @favorite.destroy
    redirect_back fallback_location: root_path
  end

end
