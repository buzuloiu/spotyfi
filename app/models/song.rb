class Song < ApplicationRecord
  mount_uploader :url, SongUploader
  validates :title, presence:true, length:{maximum: 50}, allow_nil:false
  validates :artist_id, presence:true,  allow_nil:false
  validates :url, presence:true,  allow_nil:false
  belongs_to :artist
  default_scope -> { order(created_at: :desc) }


end
