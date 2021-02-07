module UsersHelper
  def user_params
    params.require(:user).permit(:name, :avatar)
  end

  def user_icons(user)
    img = user.groups.first
    !img.avatar.attached? ? 'icon.png' : img.avatar
  end
end
