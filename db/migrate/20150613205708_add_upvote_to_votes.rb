class AddUpvoteToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :upvote, :integer, default: 0
  end
end
