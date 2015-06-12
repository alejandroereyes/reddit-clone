class WelcomeController < ApplicationController

  def index
    @links = Link.all
    @vote = Vote.new
  end
end
