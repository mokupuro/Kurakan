class CirclePostsController < ApplicationController
  def index
    @circle_posts = CirclePost.all
  end
end
