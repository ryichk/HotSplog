class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = current_user.nickname
    @reviews = user.reviews.page(params[:page]).per(10).order("created_at DESC")
  end
end
