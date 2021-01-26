class UsersController < ApplicationController
  include UsersHelper

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params.except(:avatar))
    if @user.save
      session[:user_id] = @user.id
      @user.avatar.attach(params[:user][:avatar])
      redirect_to user_path(session[:user_id])
    else
      render :new
    end
  end

  def show
    redirect_to root_path if session[:user_id].nil?
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

  def edit
    @user = User.find(params[:id])
  end
end
