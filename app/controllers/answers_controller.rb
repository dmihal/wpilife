class AnswersController < ApplicationController
  # POST /answers
  def create
    @reply = Answer.new(params[:answer])
    @question = Question.find(params[:question][:id])
    @reply.user = current_user
    @reply.question = @question

    if @reply.save
      redirect_to @question, notice: 'Reply was successfully posted.'
    else
      @answers = @question.answers
      @errors = @reply.errors
      
      render "questions/show"
    end
  end
end