class Tagging < ActiveRecord::Base
  # Prevents mass assignment error
  attr_accessible :article_id, :tag_id
  
  # Composite (or identity table) for the SQL many to many relationship
  # Notice that it belongs to an article and tag
  belongs_to :article
  belongs_to :tag
end
