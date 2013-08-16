class PostingsController < ApplicationController
  before_filter :signed_in_user, only: [:new, :edit, :update, :destroy]
  
  def new
    @posting = Posting.new
    @errors = @posting.errors
  end

  def create
    @posting = current_user.postings.build(params[:posting])
    
    if @posting.save
      flash[:success] = "Post created!"
      redirect_to @posting
    else
      @errors = @posting.errors
      render 'new'
    end
  end
  
  def show
    @posting = Posting.find(params[:id])
    if params[:partial]
      render :layout => false
    end
    respond_to do |format|
      format.html
      format.json { render :json => @posting }
    end
  end

  def edit
  end

  def index
    @categories = PostingCategory.all
    render 'posting_categories/index'
    #@postings = Posting.paginate(page: params[:page])
  end

  def all
    @postings = Posting.paginate(page: params[:page])
  end
end
