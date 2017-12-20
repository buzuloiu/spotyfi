require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song = songs(:valid)
    @song2 = songs(:valid2)
    @user = users(:paul)
  end

  test "should get index" do
    log_in_as(@user)
    get songs_url
    assert_response :success
  end

  test "should get new" do
    log_in_as(@user)
    get new_song_url
    assert_response :success
  end


  test "should show song" do
    log_in_as(@user)
    get song_url(@song)
    assert_response :success
  end

  test "should get edit" do
    log_in_as(@user)
    get edit_song_url(@song)
    assert_response :success
  end

  test "should destroy song" do
    log_in_as(@user)
    assert_difference('Song.count', -1) do
      delete song_url(@song)
    end

    assert_redirected_to songs_url
  end

  test "should go to index when not logged in" do
    get songs_url
    assert_redirected_to login_url
  end
end
