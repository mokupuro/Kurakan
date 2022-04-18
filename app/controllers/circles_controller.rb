class CirclesController < ApplicationController
  include ApplicationHelper
  before_action :set_circle, only: %i[ show edit update destroy favorites posts ]
  before_action :set_day_of_weeks, only: %i[ show edit new ]
  before_action :authenticate_admin_user!, only: %i[ new create destroy ]
  before_action :correct_circle_account, only: %i[ edit update posts ]

  def index
    @circles = Circle.paginate(page: params[:page], per_page: 15)
    @circles = @circles.where('name LIKE ?', "%#{params[:search]}%") if params[:search].present?
  end

  def show
  end

  def new
    @circle = Circle.new
    @circle.build_circle_time
  end

  def edit
  end

  def favorites
    @favorites = @circle.favorites
  end

  def posts
    @posts = @circle.circle_account.circle_posts.paginate(page: params[:page], per_page: 15)
  end

  def create
    @circle = Circle.new(circle_params)
    @circle.upload_image(params[:circle][:image])
    if @circle.save
      flash[:success] = "作成しました"
      redirect_to @circle
    else
      flash[:danger] = "作成に失敗しました"
      render 'new'
    end
  end


  def update
    @circle.upload_image(params[:circle][:image]) if params[:circle][:image].present?
    if @circle.update(circle_params)
      flash[:success] = "更新しました"
      redirect_to @circle
    else
      flash[:danger] = "更新に失敗しました"
      render 'edit'
    end
  end

  private
    def set_circle
      @circle = Circle.find(params[:id])
    end

    def set_day_of_weeks
      @day_of_weeks = DayOfWeek.all
    end

    def circle_params
      params.require(:circle).permit(:name, :description, :active_place, :number_of_people, :link, day_of_week_ids: [], circle_time_attributes: [:active_start_time, :active_end_time])
    end

    def correct_circle_account
      circle = Circle.find(params[:id])
      redirect_to(circle_url) unless circle.circle_account?(current_user)
    end
end
