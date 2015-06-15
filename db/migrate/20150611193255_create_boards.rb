class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :category, null: false

      t.timestamps null: false
    end
  end
end
