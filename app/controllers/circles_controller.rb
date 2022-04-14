class CirclesController < ApplicationController
  before_action :set_circle, only: %i[ show edit update destroy ]

  def index
    @circles = Circle.all
  end

  def show
  end

  def new
    @circle = Circle.new
    @circle.build_circle_time
    @day_of_weeks = DayOfWeek.all
  end

  def edit
  end

  def create
    @circle = Circle.new(circle_params)
    if @circle.save
      flash[:success] = "作成しました"
      redirect_to @circle
    else
      flash[:danger] = "作成に失敗しました"
      render 'new'
    end
  end


  def update
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
      @day_of_weeks = DayOfWeek.all
    end

    def circle_params
      params.require(:circle).permit(:name, :description, :active_place, :number_of_people, :link, day_of_week_ids: [], circle_time_attributes: [:active_start_time, :active_end_time])
    end
end
