class RidePostsController < ApplicationController
  # GET /ride_posts
  # GET /ride_posts.json
  def index
    @ride_posts = RidePost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ride_posts }
    end
  end

  # GET /ride_posts/1
  # GET /ride_posts/1.json
  def show
    @ride_post = RidePost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ride_post }
    end
  end

  # GET /ride_posts/new
  # GET /ride_posts/new.json
  def new
    @ride_post = RidePost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ride_post }
    end
  end

  # GET /ride_posts/1/edit
  def edit
    @ride_post = RidePost.find(params[:id])
  end

  # POST /ride_posts
  # POST /ride_posts.json
  def create
    @ride_post = RidePost.new(params[:ride_post])

    respond_to do |format|
      if @ride_post.save
        format.html { redirect_to @ride_post, :notice => 'Ride post was successfully created.' }
        format.json { render :json => @ride_post, :status => :created, :location => @ride_post }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ride_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ride_posts/1
  # PUT /ride_posts/1.json
  def update
    @ride_post = RidePost.find(params[:id])

    respond_to do |format|
      if @ride_post.update_attributes(params[:ride_post])
        format.html { redirect_to @ride_post, :notice => 'Ride post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ride_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ride_posts/1
  # DELETE /ride_posts/1.json
  def destroy
    @ride_post = RidePost.find(params[:id])
    @ride_post.destroy

    respond_to do |format|
      format.html { redirect_to ride_posts_url }
      format.json { head :no_content }
    end
  end
end
