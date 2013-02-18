class Tag < ActiveRecord::Base
  # Prevents mass assignment error
  attr_accessible :name
  
  # Expresses a many to many relationship in SQL
  has_many :taggings
  has_many :article, through: :taggings
  
  def to_s
	name
  end
end
