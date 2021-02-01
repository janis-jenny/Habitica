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
end
