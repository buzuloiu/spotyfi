class Song < ApplicationRecord
  mount_uploader :url, SongUploader
  validates :title, presence:true, length:{maximum: 50}
  validates :artist_id, presence:true
  validates :url, presence:true
  belongs_to :artist

end
