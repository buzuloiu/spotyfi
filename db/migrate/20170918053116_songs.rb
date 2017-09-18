class Songs < ActiveRecord::Migration[5.1]
  def change


    Song.create :name => "flush", :artist_id => 1, :genre => "pop"
    Song.create :name => "a song for her", :artist_id => 1, :genre => "pop"
    Song.create :name => "still into you", :artist_id => 2, :genre => "rock"


  end
end
