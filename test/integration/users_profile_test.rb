require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest
  include ApplicationHelper

  def setup
    @user = users(:paul)
  end
  # test "the truth" do
  #   assert true
  # end
  
end
