class RepeatDaysController < ApplicationController
  def create
    @repeat_days = RepeatDay.new(day: params[:day], user_id: current_user.id)
    if @repeat_days.save
    else
      render :new
    end
  end
  
  def destroy
    @repeat_days = RepeatDay.find_by(day: params[:day], user_id: current_user.id)
    if @repeat_days.delete
      #flash[:success] = 'Vote was successfully deleted.'
    else
      #flash[:error] = 'Something went wrong'
    end
  
  end
end
