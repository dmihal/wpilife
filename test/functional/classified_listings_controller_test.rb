require 'test_helper'

class ClassifiedListingsControllerTest < ActionController::TestCase
  setup do
    @classified_listing = classified_listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classified_listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classified_listing" do
    assert_difference('ClassifiedListing.count') do
      post :create, :classified_listing => { :content => @classified_listing.content, :name => @classified_listing.name, :title => @classified_listing.title }
    end

    assert_redirected_to classified_listing_path(assigns(:classified_listing))
  end

  test "should show classified_listing" do
    get :show, :id => @classified_listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @classified_listing
    assert_response :success
  end

  test "should update classified_listing" do
    put :update, :id => @classified_listing, :classified_listing => { :content => @classified_listing.content, :name => @classified_listing.name, :title => @classified_listing.title }
    assert_redirected_to classified_listing_path(assigns(:classified_listing))
  end

  test "should destroy classified_listing" do
    assert_difference('ClassifiedListing.count', -1) do
      delete :destroy, :id => @classified_listing
    end

    assert_redirected_to classified_listings_path
  end
end
