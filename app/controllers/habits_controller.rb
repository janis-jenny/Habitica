class HabitsController < ApplicationController
  include HabitsHelper
  #before_action :authenticate_user, only: %i[new create]

  def index
    @habits = Habit.all
    @total_habits = 0
  end

  def new
    @habit = current_user.habits.new
  end

  def create
    @habit = current_user.habits.new(habit_params)
    if @habit.save
      redirect_to habit_path(@habit)
    else
      render :new
    end
  end

  def show
    @habit= Habit.find(params[:id])
  end

end
