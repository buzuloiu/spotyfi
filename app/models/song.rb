class Song < ApplicationRecord
  mount_uploader :url, SongUploader
  validates :title, presence:true, length:{maximum: 50}
  validates :artist, presence:true, length:{maximum: 50}
  validates :url, presence:true

end
