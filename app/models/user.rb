class User < ActiveRecord::Base
  attr_accessible :password_hash, :username
end
