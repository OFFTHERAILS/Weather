class SessionsController < ApplicationController
 
  def new
    
  end

  def create
     user = User.find_by_name(params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "http://127.0.0.1:3000/admin"
      
    else
      redirect_to "http://127.0.0.1:3000/sessions/new", alert: "Invalid try again"
    end
  end 

  def destroy
    
    session[:user_id] = nil
    redirect_to_store_url, notice = "logged out"
  end
  
  end 