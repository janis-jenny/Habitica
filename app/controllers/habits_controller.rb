class HabitsController < ApplicationController
  include HabitsHelper

  def index
    @habits = Habit.all.includes(:repeat_days) 
    @total_habits = 0
  end

  def new
    @habit = current_user.habits.new
  end

  def create
    @habit = current_user.habits.new(habit_params)
    if @habit.save
      redirect_to @habit
    else
      render :new
    end
  end

  def show
    @habit= Habit.find(habit_id: params[:habit_id])
  end
  
  def external_habits
    @habits = Habit.all.select do |t|
     t.groups.empty? && t.user.id == session[:user_id]
    end 
  end
end
