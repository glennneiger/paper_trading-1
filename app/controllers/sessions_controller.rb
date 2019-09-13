class SessionsController < ApplicationController
  def new
  end

  def create
    user = login(params[:username], params[:password])
    if user
      redirect_back_or_to root_path, notice: "Welcome back!"
    else
      flash.now.alert = "Username or password invalid, try again"
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: "Logged out!"
  end

end
