class DislikesController < ApplicationController
    def create
        res = Response.find(params[:res_id])
        user = User.find_by(uid: session[:login_uid])
        user.dislike_responses << res
        redirect_to responses_path
    end
end
