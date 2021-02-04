module GroupsHelper
  
  def group_params
    params.require(:group).permit(:name, :avatar)
  end

  def group_icon(group)
    group.avatar.attached? ? url_for(group.avatar) : '/icon.png'
  end
end
