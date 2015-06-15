class Board < ActiveRecord::Base
  has_many :links

  def self.category_arr
    Board.all.map { |cat| [cat.category, cat.id] }
  end
end
