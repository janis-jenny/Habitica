module UsersHelper
  def user_icons(user)
    !user.avatar.attached? ? '/icon.png' : user.avatar
  end
end
