class PostingCategory < Category
  attr_accessible :description, :name
  has_many :postings, inverse_of: :posting_category
end
