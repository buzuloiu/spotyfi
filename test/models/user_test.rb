require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:valid)
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "should have name" do
    @user.name = ""
    assert_not @user.valid?
  end


  test "username should not be too long" do
    @user.name = "a"*51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = b*244
    assert_not @user.valid?
  end
end
