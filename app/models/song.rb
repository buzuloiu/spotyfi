class Song < ApplicationRecord
  mount_uploader :file, SongUploader
  validates :title, presence:true, length:{maximum: 50}
  validates :url, presence:true




end
