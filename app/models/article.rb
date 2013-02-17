class Article < ActiveRecord::Base
  # Prevents mass assignment error
  attr_accessible :title, :body
  
  # The many end of a SQL foreign key relationship
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
end
