require 'bcrypt'
class User < ActiveRecord::Base

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  has_secure_password
end
