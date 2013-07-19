class SearchController < ApplicationController
  def search
    if params[:search]
      redirect_to '/search/'+ URI::escape(params[:search])
    elsif params[:query]
      @results = Posting.find_with_index(params[:query])
    else
      @results = nil
    end
  end
end
