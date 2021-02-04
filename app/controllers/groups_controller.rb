class GroupsController < ApplicationController
  include GroupsHelper

  def index
    @groups = Group.all.includes(avatar_attachment: [:blob])
  end
  
  def new
    @group = current_user.groups.new
  end
  
  def create
    @group = current_user.groups.new(group_params)
    if @group.save
      @group.avatar.attach(params[:group][:avatar])
      redirect_to group_path(@group)
    else
      render :new
    end
  end
  
  def show
    @group = Group.find(params[:id])
    @habits = @group.habits.includes(user: [avatar_attachment: :blob])
  end
end
