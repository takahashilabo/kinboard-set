class TopController < ApplicationController
  def main
    if session[:uid]
      render 'main'
    else
      render 'login'
    end
  end
  
  def login
        if User.find_by(uid: params[:uid], pass: params[:pass])
            session[:login_uid] = params[:uid]
            render top_main_path
            
        end
  end
    
  def logout
      session.delete(:uid)
      redirect_to top_login_path
  end
    
end

