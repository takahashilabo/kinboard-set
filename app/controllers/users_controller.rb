class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(uid: params[:user][:uid],
    pass: BCrypt::Password.create(params[:user][:pass]), name: params[:user][:name])
    if @user.save
      redirect_to users_path #"/**"
    else
      render 'new'
    end
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    user = User.find(params[:id])
    user.update(name: params[:user][:name])
    redirect_to users_path
  end
end
