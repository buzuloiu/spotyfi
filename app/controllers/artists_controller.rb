class ArtistsController < ApplicationController

  def index
    @artists = Artist.paginate(page: params[:page])

  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs.paginate(page: params[:page])
  end

end
