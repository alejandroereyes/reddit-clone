class LinksController < ApplicationController

  def show
    @link = Link.find(params[:id])
  end

  def new
    authenticate_user!
    @link = Link.new
  end

  def create
    authenticate_user!
    @link = Link.new
    @link.user_id = session[:user_id]
    @link.board_id = params[:link][:board_id]
    @link.title = params[:link][:title]
    @link.body = params[:link][:body]
    if @link.save
      redirect_to @link, notice: "Your link is up!"
    else
      render :new
    end
  end

  private
  def link_params
    params.require(:link).permit(:title, :body, :user_id, :board_id)
  end
end
