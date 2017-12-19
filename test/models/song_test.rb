require 'test_helper'

class SongTest < ActiveSupport::TestCase
   #test "the truth" do
    # assert true
   #end
   def setup
     @song = songs(:valid)
   end

   test "should be valid" do
     assert @song.valid?
   end

   test "song should have title" do
     puts @song.title
     @song.title = ""
     puts @song.title
     assert_not @song.valid?
   end
end
