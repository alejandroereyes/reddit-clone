class User < ActiveRecord::Base
  has_secure_password
  has_many :links
  has_many :comments
  has_many :votes

end
