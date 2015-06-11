class CreateBoards < ActiveRecord::Migration
  has_many :links
  def change
    create_table :boards do |t|
      t.string :category, null: false

      t.timestamps null: false
    end
  end
end
