class Post < ActiveRecord::Base
  attr_accessible :category_id, :content, :title
  belongs_to :user
end
