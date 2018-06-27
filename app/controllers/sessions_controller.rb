class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      remember user
      redirect_to '/static_pages/home'
    else
      flash.now[:danger]='Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    logout
    redirect_to root_url
  end
end
