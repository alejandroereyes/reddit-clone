class WelcomeController < ApplicationController

  def index
    @links = Link.all
    @vote = Vote.new
    @user = User.all
    @votes = Vote.all
  end
end
