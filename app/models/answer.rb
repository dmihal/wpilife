class Answer < Post
  attr_accessible :body
  belongs_to :question, inverse_of: :answers
  belongs_to :user, inverse_of: :answers
end
