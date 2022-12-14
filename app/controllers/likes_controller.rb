class LikesController < ApplicationController
    def create
        res = Response.find(params[:res_id])
        user = User.find_by(uid: session[:login_uid])
        user.like_responses << res
        redirect_to responses_path
    end
end