class LinksController < ApplicationController

  def show
    @link = Link.find(params[:id])
  end

  private
  def post_params
    params.require(:link).permit(:title, :body, :user_id, :board_id)
  end
end
