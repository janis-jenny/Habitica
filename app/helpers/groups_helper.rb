module GroupsHelper
  def group_icon(group)
    group.avatar.attached? ? url_for(group.avatar) : '/icon.png'
  end
end
