module HabitsHelper
  def habit_params
    params.require(:habit).permit(:name, :amount, :time, :date, days_attributes: [:id, :name, :_destroy])
  end
end
