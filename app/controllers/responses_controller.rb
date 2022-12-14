class ResponsesController < ApplicationController
  def index
    @responses = Response.all
    @count = 0
    @thre_id = params[:thre_id]
  end
  
  def new
    @response = Response.new
  end
  
  def create
    user = User.find_by(uid: current_user.uid)
    @response = Response.new(message: params[:response][:message], user_id: user.uid, thre_id: params[:response][:thre_id], tdate: Time.current)
    if image = params[:response][:image]
      @response.image.attach(image)
    end

    if @response.save
      redirect_to thre_path(current_user.id) #"/**"
    else
      render 'new'
    end
  end
  
  def destroy
    response = Response.find(params[:id])
    response.destroy
    redirect_to thre_path(current_user.id)
  end
  
  def show
    @response = Response.find(params[:id])
  end
end
