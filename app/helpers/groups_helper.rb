module GroupsHelper
  def group_icon(group)
    if group.avatar.attached?
      group.avatar
    elsif group.image
      group.image
    else
      'icon.png'
    end
  end
end
