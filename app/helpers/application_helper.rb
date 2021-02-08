module ApplicationHelper
  def total_hours
    habits = Habit.all
    total = 0
    habits.each do |habit|
     total += habit.time * habit.repeat_days.count
    end
    h = total / 60
    m = total % 60;
    return "#{h},#{m}"
  end

  def navbar
    return if current_user && current_page?(user_path(current_user.id)) || current_page?(root_path)
    if user_login 
      raw("<nav class='nav'>
        #{link_to raw("<i class='fas fa-arrow-circle-left'></i>"), user_path(current_user.id), class: 'left-btn'},
        #{link_to 'Logout', '/logout', method: 'delete', class: 'logout-btn'}
        </nav>")
    else
      raw("<nav class='nav'>
      #{link_to raw("<i class='fas fa-arrow-circle-left' aria-hidden='true'></i>"), root_path, class: 'left-btn'}
      </nav>")
    end
  end
end
