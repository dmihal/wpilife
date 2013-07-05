class Answer < Post
  attr_accessible :content
  belongs_to :question, inverse_of: :answers
  belongs_to :user, inverse_of: :answers
  
  #before_save { |answer| answer.name = answer.question.name }
  
  validates :content, presence: true, length: { minimum: 30 }
end
