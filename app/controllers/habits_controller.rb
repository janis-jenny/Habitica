class HabitsController < ApplicationController
  include HabitsHelper
  #before_action :authenticate_user, only: %i[new create]

  def index
    @habits = Habit.all
    @total_habits = 0
  end

  def new
    @habit = current_user.habits.new
    RepeatDay.find(:id).to_a
    => [
    <Day id: 1, name: "Weekly">,
    <Day id: 2, name: "2 times per week">,
    <Day id: 3, name: "3 times per week">
    <Day id: 4, name: "4 times per week">
    <Day id: 7, name: "Daily">
    ]
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
