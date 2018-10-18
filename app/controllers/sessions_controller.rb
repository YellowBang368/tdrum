class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by_login(params[:login])
    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Login or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

end
