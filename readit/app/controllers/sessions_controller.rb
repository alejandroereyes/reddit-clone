class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user != nil && user.aunthenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Welcome #{user.name}!"
    else
      flash[:alert] = "Email or Password did not match"
      render :new
    end
  end

  def destory
    session[:user_id] = nil
    redirect_to root_path
  end
end
