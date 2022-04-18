module UsersHelper
  def user_name_exist?(user)
    user.name.present? ? user.name : '名無しさん'
  end
end
