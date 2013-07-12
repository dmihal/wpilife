class Category < ActiveRecord::Base
  attr_accessible :description, :name
  
  validates :name, presence: true, length: { minimum: 3 }
end
