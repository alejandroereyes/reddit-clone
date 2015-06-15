class Comment < ActiveRecord::Base
  has_many :votes
  belongs_to :link
  belongs_to :user
end
