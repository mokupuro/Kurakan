class CirclesController < ApplicationController
  before_action :set_circle, only: %i[ show edit update destroy ]

  def index
    @circles = Circle.all
  end

  def show
  end

  def new
    @circle = Circle.new
  end

  def edit
  end

  def create
  end

  private
    def set_circle
      @circle = Circle.find(params[:id])
    end

    def circle_params
      params.require(:circle).permit(:name, :description, :active_place, :number_of_people, :link)
    end
end
