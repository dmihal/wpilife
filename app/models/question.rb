class Question < Post
  attr_accessible :title, :body
  belongs_to :user, inverse_of: :questions
  has_many :answers, dependent: :destroy, inverse_of: :question
end
