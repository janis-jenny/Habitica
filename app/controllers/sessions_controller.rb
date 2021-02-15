class SessionsController < ApplicationController
  before_action :authenticate_user, only: %i[destroy show]
  def new; end

  def create
    user = User.find_by(name: params[:name])
    if user
      session[:user_id] = user.id
      redirect_to user_path(session[:user_id])
      flash[:notice] = 'Succesfully logged in'
    else
      flash.now[:alert] = 'Please enter a valid name'
      redirect_to new_user_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Succesfully logged out'
    redirect_to root_path
  end
end
