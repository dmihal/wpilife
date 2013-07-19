class Posting < ActiveRecord::Base
  attr_accessible :content, :title, :posting_category_id
  belongs_to :user
  belongs_to :posting_category, inverse_of: :postings
  
  acts_as_indexed :fields => [:content, :title]
  
  validates :title, presence: true, length: { minimum: 10, maximum: 100 }
  validates :content, presence: true, length: { minimum: 50, maximum: 10000 }
  validates :user_id, presence: true
  
  default_scope order: 'postings.created_at DESC'
  
end
