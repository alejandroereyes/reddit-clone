class BoardsController < ApplicationController

  def show
    render json: params
  end
end

