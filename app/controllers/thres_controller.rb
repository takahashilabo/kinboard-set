class ThresController < ApplicationController
  def index
    @thres = Thre.all
  end
  
  def new
    @thre = Thre.new
  end
  
  def create
    @thre = Thre.new(title: params[:thre][:title], user_id: params[:thre][:user_id], t_date: Time.current)
    if @thre.save
      redirect_to thres_path #"/**"
    else
      render 'new'
    end
  end
  
  def destroy
    thre = Thre.find(params[:id])
    thre.destroy
    redirect_to thres_path
  end
  
  def edit
    @thre = Thre.find(params[:id])
  end
  
  def update
    thre = Thre.find(params[:id])
    thre.update(title: params[:thre][:title], t_date: Time.current)
    redirect_to thres_path
  end
  
  def search
    @thres = Thre.where('title LIKE(?)', "%#{params[:keyword]}%")
    render "index"
  end
  
  def show
    @thre = Thre.find(params[:id])
  end
end
