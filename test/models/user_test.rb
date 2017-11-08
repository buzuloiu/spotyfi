require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:valid)
  end

  test "should be valid" do
    puts @user
    assert @user.valid?
  end

  test "should have name" do
    @user.name = ""
    assert_not @user.valid?
  end

end
