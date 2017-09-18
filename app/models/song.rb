class Song < ApplicationRecord
  belongs_to :artist
  validates_presence_of :name
  validates_presence_of :genre
end
