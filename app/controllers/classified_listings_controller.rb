class ClassifiedListingsController < ApplicationController
  # GET /classified_listings
  # GET /classified_listings.json
  def index
    @classified_listings = ClassifiedListing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @classified_listings }
    end
  end

  # GET /classified_listings/1
  # GET /classified_listings/1.json
  def show
    @classified_listing = ClassifiedListing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @classified_listing }
    end
  end

  # GET /classified_listings/new
  # GET /classified_listings/new.json
  def new
    @classified_listing = ClassifiedListing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @classified_listing }
    end
  end

  # GET /classified_listings/1/edit
  def edit
    @classified_listing = ClassifiedListing.find(params[:id])
  end

  # POST /classified_listings
  # POST /classified_listings.json
  def create
    @classified_listing = ClassifiedListing.new(params[:classified_listing])

    respond_to do |format|
      if @classified_listing.save
        format.html { redirect_to @classified_listing, :notice => 'Classified listing was successfully created.' }
        format.json { render :json => @classified_listing, :status => :created, :location => @classified_listing }
      else
        format.html { render :action => "new" }
        format.json { render :json => @classified_listing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /classified_listings/1
  # PUT /classified_listings/1.json
  def update
    @classified_listing = ClassifiedListing.find(params[:id])

    respond_to do |format|
      if @classified_listing.update_attributes(params[:classified_listing])
        format.html { redirect_to @classified_listing, :notice => 'Classified listing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @classified_listing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /classified_listings/1
  # DELETE /classified_listings/1.json
  def destroy
    @classified_listing = ClassifiedListing.find(params[:id])
    @classified_listing.destroy

    respond_to do |format|
      format.html { redirect_to classified_listings_url }
      format.json { head :no_content }
    end
  end
end
