module ApplicationHelper
  def current_user?(user)
    user && user == current_user
  end

  def current_circle_account?(user, circle)
    CircleAccount.find_by(user: current_user, circle: circle)
  end
end
