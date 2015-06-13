class VotesController < ApplicationController

  def upvote
    if Vote.exists?(link_id: params[:link_id])
      @vote = Vote.find_by(link_id: params[:link_id])
      vote_count = @vote[:upvote]
      @vote[:upvote] = vote_count + 1
      @vote[:user_id] = session[:user_id] if session[:user_id]
      @vote.save
      redirect_to :back
    else
      @vote = Vote.new
      @vote[:upvote] = 1
      @vote[:link_id] = params[:link_id]
      @vote[:user_id] = session[:user_id] if session[:user_id]
      @vote.save
      redirect_to :back
    end # updating link vote cond
  end

  def downvote
    if Vote.exists?(link_id: params[:link_id])
      @vote = Vote.find_by(link_id: params[:link_id])
      vote_count = @vote[:downvote]
      @vote[:downvote] = vote_count + 1
      @vote[:user_id] = session[:user_id] if session[:user_id]
      @vote.save
      redirect_to :back
    else
      @vote = Vote.new
      @vote[:downvote] = 1
      @vote[:link_id] = params[:link_id]
      @vote[:user_id] = session[:user_id] if session[:user_id]
      @vote.save
      redirect_to :back
    end # updating link vote cond
  end
end #class
