module HabitsHelper
  def habit_params
    params.require(:habit).permit(:name, :amount, :time, :group_id)
  end

  def frequency_days(param)
    arr = []
    param.each do |el|
      arr << el.day
    end
    return arr.uniq.map { |arr| arr[0] + arr[1] + arr[2]}
  end

  def group_icons(habit)
    img = habit.groups.first
    !img.avatar.attached? ? 'icon.png' : img.avatar
  end

  def select_days(habit, day)
    selected_day = RepeatDay.find_by(user_id: current_user.id, day: "#{day}")

    if selected_day
      link_to "#{day}", repeat_day_path(day: "#{day}", habit_id: habit.id), class: 'btn-delete  my-5 rounded', method: :delete
    else
      link_to "#{day}", repeat_days_path(day: "#{day}", habit_id: habit.id), class: 'btn-save my-5 rounded', method: :post
    end
  end

  
end
