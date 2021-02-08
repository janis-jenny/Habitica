module ApplicationHelper
  def total_hours
    habits = Habit.where(user_id: current_user.id)
    total = 0
    habits.each do |habit|
     total += habit.time * habit.repeat_days.count
    end
    h = total / 60
    m = total % 60;
    return "#{h},#{m}"
  end

  
end
