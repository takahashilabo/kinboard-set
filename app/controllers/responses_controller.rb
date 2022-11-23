class ResponsesController < ApplicationController
  def index
    @responses = Response.all
    @count = 0
  end
  
  def new
    @response = Response.new
  end
  
  def create
    @response = Response.new(message: params[:response][:message], user_id: params[:response][:user_id], thre_id: params[:response][:thre_id], tdate: Time.current)
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
  
  def get_image
    response = Response.find(params[:id]) #↓詳細は説明を後述する
    send_data response.file, disposition: :inline, type: 'image/png'
  end
end
