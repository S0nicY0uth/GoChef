require 'test_helper'

class UserTest < ActiveSupport::TestCase
  #include Devise::TestHelpers

  def setup
    @user = User.new({email: 'nigella@nigellalawson.com', password: 'pass123', name: 'Nigella Lawson', location_lat: 17.172744, location_lon: -3.142876, bio: 'Food writer and journalist'})
  end

  test "user should not be valid without a name" do
    user = User.new({email: 'nigella@nigellalawson.com', password: 'pass123', location_lat: 17.172744, location_lon: -3.142876, bio: 'Food writer and journalist'})
    refute user.valid?
  end

  test "user should not be valid without an e-mail address" do
    user = User.new({password: 'pass123', name: 'Nigella Lawson', location_lat: 17.172744, location_lon: -3.142876, bio: 'Food writer and journalist'})
    refute user.valid?
  end

  test "test that a user with all required fields is valid" do
    assert @user.valid?
  end

end
