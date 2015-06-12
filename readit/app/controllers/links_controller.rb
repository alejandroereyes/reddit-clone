class LinksController < ApplicationController

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  private
  def link_params
    params.require(:link).permit(:title, :body, :user_id, :board_id)
  end
end
