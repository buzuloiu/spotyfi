class Song < ApplicationRecord
  mount_uploader :song, SongUploader
end
