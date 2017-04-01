class ReviewsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @reviews = Review.includes(:user).page(params[:page]).per(10).order("created_at DESC")
  end

  def new
  end

  def create
    Review.create(rate: review_params[:rate], image: review_params[:image], review: review_params[:review], user_id: current_user.id)
  end

  private
  #Use callbacks to share common setuo or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end
    #Never trust parameters form the scary internet, only allow the white list through.
    def review_params
      params.permit(:rate, :image, :review)
    end
    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end

end
