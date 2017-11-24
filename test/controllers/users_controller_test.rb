require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:paul)
    @other_user = users(:steve)

  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should go to index when not logged in" do
    get users_path
    assert redirect_to login_url
  end

end
