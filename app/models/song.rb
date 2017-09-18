class Song < ApplicationRecord
  belongs_to :artist
  validates_presence_of :title
  validates_presence_of :genre
end
