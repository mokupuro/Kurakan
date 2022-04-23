module CirclePostsHelper
  def display_created_at(created_at)
    created_at&.strftime("%m月%d日 %I:%M")
  end
end
