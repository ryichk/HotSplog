class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: comment_params[:text], review_id: comment_params[:review_id], user_id: current_user.id)
    redirect_to "/reviews/#{@comment.review.id}"
  end

  private
  def comment_params
    params.permit(:text, :review_id)
  end
end
