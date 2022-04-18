class CirclePostsController < ApplicationController
  before_action :set_circle_account, only: %i[ new create destroy ]
  before_action :correct_circle_account, only: :destroy

  def index
    @circle_posts = CirclePost.paginate(page: params[:page], per_page: 15)
  end

  def new
    @circle_post = CirclePost.new
  end

  def create
    @circle_post = @circle_account.circle_posts.build(circle_post_params)
    @circle_post.upload_image(params[:circle_post][:image])
    if @circle_post.save
      flash[:success] = "投稿しました"
      redirect_to circle_posts_path
    else
      flash[:danger] = "投稿に失敗しました"
      render 'new'
    end
  end

  def destroy
    @circle_post.destroy
    flash[:success] = "投稿を削除しました"
    redirect_to request.referrer || root_url
  end

  private
    def circle_post_params
      params.require(:circle_post).permit(:content)
    end

    def set_circle_account
      @circle_account = current_user.circle_account
      redirect_to circle_posts_path if @circle_account.nil?
    end

    def correct_circle_account
      @circle_post = current_user.circle_account.circle_posts.find_by(id: params[:id])
      redirect_to root_url if @circle_post.nil?
    end
end
