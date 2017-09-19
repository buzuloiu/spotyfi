class SongController < ApplicationController

  layout 'standard'



  def list
    @songs = Song.all
     end

     def show
       @song = Song.find(params[:id])
     end

     def new
       @songs = Song.new
     end

     def create
       @song = Song.new(song_params)

       if @song.save
         redirect_to :action => 'list'
       else
         @genres = Genre.all
         @artists = Artist.all
         render :action => 'new'
       end
     end

     def song_params
       params.require(:songs).permit(:name, :artist_id, :genre)
     end

     def edit
       @song = Song.find(params[:id])
     end

     def update
       @song = Song.find(params[:id])
       if @song.update_attributes(song_params)
         redirect_to :action => 'show', :id => @song
       else
         @genres = Genre.all
         render :action => 'edit'
       end
     end

     def delete
       Song.find(params[:id]).destroy
       redirect_to :action => 'list'
     end
end
