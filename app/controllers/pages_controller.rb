class PagesController < ApplicationController
  before_action :set_circle_account, only: :circle_account

  def index
  end

  def circle_account
  end

  private
    def set_circle_account
      @circle_account = current_user&.circle_account
      redirect_to circle_posts_path if @circle_account.nil?
    end
end
