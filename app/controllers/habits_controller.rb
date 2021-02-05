class HabitsController < ApplicationController
  include HabitsHelper
  include GroupsHelper

  def index
    @habits = Habit.all.includes(:repeat_days) 
   
  end

  def new
    @habit = current_user.habits.new
    @habit.groups.build
    @groups = Group.all
  end

  def create
    
    @habit = current_user.habits.new(habit_params.select{|key, value| key != 'group_id'})
    if @habit.save
        GroupHabit.create(habit_id: @habit.id, group_id: habit_params[:group_id])
      redirect_to habit_path({id: @habit.id})
    else
      render :new
    end 
  end

  def show
    @habit = Habit.find(params[:id])
  end
  
  def external_habits
    @habits = Habit.all.select do |t|
     t.user.id == session[:user_id]
    end 
  end
end
