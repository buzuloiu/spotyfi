require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new()
  end

  test "should be valid" do
    assert User.create.valid?
  end

end
