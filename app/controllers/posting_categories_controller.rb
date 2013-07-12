class PostingCategoriesController < ApplicationController
  
    def show
    @category = Category.find(params[:id])
    @postings = @category.postings.paginate(page: params[:page])
  end
end
