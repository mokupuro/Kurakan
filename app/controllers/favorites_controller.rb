class FavoritesController < ApplicationController
  before_action :set_circle, only: [:create, :destroy]
  before_action :sign_in_required, only: [:create, :destroy]

  def create
    current_user.favorite(@circle)
    redirect_to @circle
  end
  
  def destroy
    current_user.unfavorite(@circle)
    redirect_to @circle
  end

  private
    def set_circle
      @circle = Circle.find(params[:circle_id])
    end
end
