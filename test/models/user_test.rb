require 'test_helper'

class UserTest < ActiveSupport::TestCase
  #include Devise::TestHelpers
  test "user should not be valid without a name" do
    user = User.new 
    refute user.valid?
  end
end
