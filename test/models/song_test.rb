require 'test_helper'

class SongTest < ActiveSupport::TestCase
   #test "the truth" do
    # assert true
   #end
   def setup
     @song = songs(title:"test",artist_id:1,album_id:1,plays:1,genre_id:1,file:"afile")
   end
=begin
   test "should be valid" do
     @song = Song.new(title:"test",artist_id:1,album_id:1,plays:1,genre_id:1,file:"afile")
     assert @song.valid?
   end
=end
end
