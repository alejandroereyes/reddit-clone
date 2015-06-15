class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :post
      t.string :title, null: false
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :board, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
