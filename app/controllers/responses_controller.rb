class ResponsesController < ApplicationController
  def index
    @responses = Response.all
    @count = 0
  end
  
  def new
    @response = Response.new
  end
  
  def create #スレッドと紐づけする用に少し変更しました
    user = User.find_by(uid: current_user.uid)
    @response = Response.new(message: params[:response][:message], user_id: user.uid, thre_id: params[:response][:thre_id], tdate: Time.current)
    if @response.save
      redirect_to responses_path #"/**"
    else
      render 'new'
    end
  end
  
  def destroy
    response = Response.find(params[:id])
    response.destroy
    redirect_to responses_path
  end
end
