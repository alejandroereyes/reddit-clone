class User < ActiveRecord::Base
  has_secure_password
  has_many :links
  has_many :comments
  has_many :votes

  def self.user_name(assoc_id)
    User.find(assoc_id)
  end
end
