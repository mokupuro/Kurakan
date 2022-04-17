class UsersController < ApplicationController
  include ApplicationHelper
  before_action :set_user, only: %i[ show edit update ]
  before_action :sign_in_required, only: [:edit, :update]
  before_action :correct_user, only: [:edit, :update]

  def show
    @favorites = @user.favorites
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "更新しました"
      redirect_to user_path
    else
      flash[:danger] = "更新に失敗しました"
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :twitter_id, :instagram_id)
    end

    def set_user
      @user = User.find(params[:id])
    end

    def correct_user
      user = User.find(params[:id])
      redirect_to(user_url) unless current_user?(user)
    end
end
