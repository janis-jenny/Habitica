module HabitsHelper
  def habit_params
    params.require(:habit).permit(:name, :amount, :time, :group_id)
  end

  def frequency_days(param)
    arr = []
    param.each do |el|
      arr << el.day
    end
    return arr.uniq
  end

  def group_icons(habit)
    img = habit.groups.first
    !img.avatar.attached? ? 'icon.png' : img.avatar
  end
end
