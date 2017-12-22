require 'test_helper'

class SongsEditTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end


  def setup
    @admin = users(:paul)
    @non_admin = users(:steve)
    @song = songs(:valid)
  end


  test "unsuccessful song edit" do
    log_in_as(@admin)
    get edit_song_path(@song)
    assert_template 'songs/edit'
    patch song_path(@song), params: { song: { title:  "",
                                              artist_id:"",
                                               } }
    assert_template 'songs/edit'
  end


end
