class CommentsController < ApplicationController

  def create
    @comment = Comment.new
    @comment.body = params[:comment][:body]
    @comment.user_id = session[:user_id]
    @comment.link_id = params[:comment][:link_id]
    if @comment.save
      redirect_to :back
    else
      flash[:alert] = "Error Occured!"
      render :back
    end
  end
end
