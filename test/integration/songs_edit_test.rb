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
    log_in_as(@non_admin)
    get edit_song_path(@song)
    assert_template 'songs/edit'
    patch song_path(@song), params: { song: { title:  "  ",
                                              artist: "  ",
                                              url: "test.com/song.mp3" } }
    puts @song.url
    assert_template 'songs/edit'
  end


end
