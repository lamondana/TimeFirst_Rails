class AccessController < ApplicationController
  layout 'admin'
  def menu
    #display text and links
    


  end

  def login
    #display form
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = Teacher.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      session[:user_id] = authorized_user.id
      redirect_to(teacher_path)
    else
      flash.now[:notice] = "Invalid credentials"
      render('login')
    end


  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    render('login')
  end
end
