class Category < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :postings  
  
  validates :name, presence: true, length: { minimum: 3 }
end
