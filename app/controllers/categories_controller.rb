class CategoriesController < ApplicationController
  def new
  end

  def show
    @category = Category.find(params[:id])
    @postings = @category.postings.paginate(page: params[:page])
  end

  def edit
  end

  def index
    @categories = Category.all
  end
end
