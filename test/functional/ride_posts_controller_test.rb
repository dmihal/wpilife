require 'test_helper'

class RidePostsControllerTest < ActionController::TestCase
  setup do
    @ride_post = ride_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ride_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ride_post" do
    assert_difference('RidePost.count') do
      post :create, :ride_post => { :body => @ride_post.body, :date => @ride_post.date, :title => @ride_post.title, :type => @ride_post.type }
    end

    assert_redirected_to ride_post_path(assigns(:ride_post))
  end

  test "should show ride_post" do
    get :show, :id => @ride_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ride_post
    assert_response :success
  end

  test "should update ride_post" do
    put :update, :id => @ride_post, :ride_post => { :body => @ride_post.body, :date => @ride_post.date, :title => @ride_post.title, :type => @ride_post.type }
    assert_redirected_to ride_post_path(assigns(:ride_post))
  end

  test "should destroy ride_post" do
    assert_difference('RidePost.count', -1) do
      delete :destroy, :id => @ride_post
    end

    assert_redirected_to ride_posts_path
  end
end
