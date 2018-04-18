require 'test_helper'
require "minitest/autorun"
require "minitest/pride"


class UsersControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  

    test "should get index and list chefs" do
      get :index
      assert_response :success
      assert_match users(:one).name, @response.body
      assert_match users(:two).name, @response.body
    end
    
    test "should show logout to signed in user" do
      sign_in users(:one)
      get :index
      assert_match 'Logout', @response.body
    end

    test "should show `Chef Login` to unsigned in user" do
      get :index
      assert_match 'Chef Login', @response.body
    end

    test "should display user profile" do
      user = User.create!({email: 'gordonramsey@gmail.com', password: 'pass123', name: 'Gordon Ramsey', location_lat: 51.512640,location_lon: -0.090390, bio: 'Swears a lot and has numerous TV shows in both UK and America'})
      get :show, params: { id: user.id }
      assert_response :success
      assert_match user.bio, @response.body
    end
  

end
