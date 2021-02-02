class GroupsController < ApplicationController
  include GroupsHelper

  def index
    @groups = Group.all.includes(avatar_attachment: [:blob])
  end
  
  def new
    @group = Group.new
  end
  
  def create
    @group = Group.new(group_params.except(:avatar))
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
