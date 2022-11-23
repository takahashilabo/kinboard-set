class TopController < ApplicationController
  def main
    if session[:login_uid]
        render "main"
    else
        render "login"
    end
  end
  
  def login
    input_pass = params[:pass]
    if User.find_by(uid: params[:uid])
        user = User.find_by(uid: params[:uid])
        db_pass = user.pass
        if BCrypt::Password.new(db_pass) == input_pass
            session[:login_uid] = params[:uid]
            render top_main_path
        else
            redirect_to root_path
        end
    end
  end

  def logout
      session.delete(:uid)
      redirect_to top_login_path
  end
    
end

