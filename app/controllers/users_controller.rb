class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @reviews = Review.where(user_id: current_user.id).page(params[:page]).per(10).order("created_at DESC")
  end
end
