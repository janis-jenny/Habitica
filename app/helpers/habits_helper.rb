module HabitsHelper
  def habit_params
    params.require(:habit).permit(:name, :amount, :time, :date)
  end
end
