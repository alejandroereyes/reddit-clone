class VotesController < ApplicationController

  def upvote
    if params[:vote].has_key?(:link_id)
      if Vote.exists?(params[:vote][:link_id])
        @vote = Vote.find_by(link_id: params[:vote][:link_id])
        vote_count = add_vote[:upvote]
        @vote.upvote = vote_count + 1
        @vote.user_id = session[:user_id] if session[:user_id]
        @vote.save
      else
        @vote = Vote.new_vote
        @vote.upvote = 1
        @vote.link_id = params[:vote][:link_id]
        @vote.user_id = session[:user_id]
        @vote.save
      end # updating link vote cond
    end # link_id cond
  end

  def downvote
    if params[:vote].has_key?(:link_id)
      if Vote.exists?(params[:vote][:link_id])
        @vote = Vote.find_by(link_id: params[:vote][:link_id])
        vote_count = add_vote[:downvote]
        @vote.downvote = vote_count + 1
        @vote.user_id = session[:user_id] if session[:user_id]
        @vote.save
      else
        @vote = Vote.new_vote
        @vote.downvote = 1
        @vote.link_id = params[:vote][:link_id]
        @vote.user_id = session[:user_id]
        @vote.save
      end # updating link vote cond
    end # link_id cond
  end
end #class
