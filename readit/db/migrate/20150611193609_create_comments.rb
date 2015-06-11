class CreateComments < ActiveRecord::Migration
  has_many :votes
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.belongs_to :link, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
