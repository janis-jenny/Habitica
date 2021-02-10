class RepeatDaysController < ApplicationController
  def create
    @repeat_days = RepeatDay.new(day: params[:day], user_id: current_user.id, habit_id: params[:habit_id])
    @repeat_days.save
    redirect_to habit_path(params[:habit_id])
  end
  
  def destroy
    @repeat_days = RepeatDay.find_by(day: params[:day], user_id: current_user.id)
    if @repeat_days.delete
      flash[:success] = 'Day was successfully deleted.'
      redirect_to habit_path(params[:habit_id])
    else
      flash[:error] = 'Something went wrong'
    end
  end
end
