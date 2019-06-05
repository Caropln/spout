class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @markers = [
      {
        lat: 43.2988937,
        lng: 5.381047,
        infowindow: ""
      }
    ]
  end
end
