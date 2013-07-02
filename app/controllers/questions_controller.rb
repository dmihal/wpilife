class QuestionsController < ApplicationController
  # GET /questions
  def index
    @questions = Question.all
  end

  # GET /questions/1
  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  # GET /questions/new
  def new
    @question = Question.new
    @errors = @question.errors
  end

  # GET /questions/1/edit
  def edit
    @question = Question.find(params[:id])
  end

  # POST /questions
  def create
    @question = Question.new(params[:question])
    @question.user_id = current_user.id

    if @question.save
      redirect_to @question, notice: 'Question was successfully created.'
    else
      @errors = @question.errors
      render action: "new"
    end
  end

  # PUT /questions/1
  def update
    @question = Question.find(params[:id])

    if @question.update_attributes(params[:question])
      redirect_to @question, notice: 'Question was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /questions/1
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to questions_url
  end
end
