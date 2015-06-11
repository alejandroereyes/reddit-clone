class CreateUsers < ActiveRecord::Migration
  has_secure_password
  has_many :links
  has_many :comments
  has_many :votes
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps null: false
    end
  end
end
