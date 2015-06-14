class AddDownvoteToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :downvote, :integer, default: 0
  end
end
