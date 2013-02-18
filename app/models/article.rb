class Article < ActiveRecord::Base
  # Prevents mass assignment error
  attr_accessible :title, :body, :tag_list
  
  # The many end of a SQL foreign key relationship
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  
  def tag_list
	return self.tags.join(", ")
  end
  
  def tag_list=(tags_string)
	tag_names = tags_string.split(",").collect{|s| s.strip.downcase}

	tag_names.each do |tag_name|
		tag = Tag.find_or_create_by_name(tag_name)
		tagging = self.taggings.new
		tagging.tag_id = tag.id
	end
  end
end
