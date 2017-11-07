require 'test_helper'

class SongTest < ActiveSupport::TestCase
   #test "the truth" do
    # assert true
   #end
   def setup
     @song = Song.create(title:"test",artist_id:1,album_id:1,plays:1,genre_id:1,file:"afile")
   end

   test "should be valid" do
     assert @song.isvalid?
   end

end
