class HomeController < ApplicationController
  def index
  	@classified_listings = ClassifiedListing.all
  end
end
