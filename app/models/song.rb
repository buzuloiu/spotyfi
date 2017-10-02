class Song < ApplicationRecord
  mount_uploader :file, SongUploader
end
