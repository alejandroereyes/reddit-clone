class Link < ActiveRecord::Base
  has_many :votes
  has_many :comments
  belongs_to :user
  belongs_to :board
  validates :title, :post, :user_id, :board_id, presence: { message: "This section is mandatory" }
end
