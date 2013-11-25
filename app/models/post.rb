class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  attr_accessible :body, :title
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :posts
end
