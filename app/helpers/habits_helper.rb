module HabitsHelper
  def habit_params
    params.require(:habit).permit(:name, :amount, :time, :date)
  end

  def frequency_days(param)
    arr = []
    param.each do |el|
      arr << el.day
    end
    return arr.uniq
  end

  def total_time(param)
    arr = []
    arr << param.where("DATE(created_at) = ?", Date.today).count 
    return arr
  end
end
