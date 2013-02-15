class Comment < ActiveRecord::Base
  # This prevents mass assignment error
  attr_accessible :author_name, :body
  
  # This deals with foreign key relationships in SQL databases
  belongs_to :article
end
