module UsersHelper
  def user_params
    params.require(:user).permit(:name, :avatar)
  end

  def user_icons(user)
    !user.avatar.attached? ? '/icon.png' : user.avatar
  end
end
