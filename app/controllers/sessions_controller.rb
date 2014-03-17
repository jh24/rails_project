class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      # Sign the user in and redirect
    else
      flash[:error] = 'Invalid email/passsword combination'
      render 'new'
    end
  end

  def destroy
  end
end
