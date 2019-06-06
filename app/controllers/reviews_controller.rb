class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @place = Place.find(params[:place_id])
    @review.place = @place

    if @review.save!
      respond_to do |format|
        format.html { redirect_to place_path(@place) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'places/show' }
        format.js  # <-- idem
      end
    end
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_place
    @place = Place.find(params[:id])
  end
end
