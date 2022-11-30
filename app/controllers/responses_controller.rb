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
    if image = params[:response][:image]
      @response.image.attach(image)
    end
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
  
  def show
    @response = Response.find(params[:id])
  end
end
