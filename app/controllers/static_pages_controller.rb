class StaticPagesController < ApplicationController
  def home
    @postings = Posting.last(5)
    @postingCategories = PostingCategory.first(5)
  end

  def help
  end

  def about
  end
end
