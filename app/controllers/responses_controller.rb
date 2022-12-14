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
      print params[:id]
      redirect_back(fallback_location: root_path)
    else
      render 'new'
    end
  end
  
  def destroy
    response = Response.find(params[:id])
    response.destroy
    redirect_to responses_path
  end
  
  def show
    @response = Response.find(params[:id])
  end
end
