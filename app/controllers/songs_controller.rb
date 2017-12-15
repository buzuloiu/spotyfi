class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user
  before_action :admin_user,     only: [:edit, :destroy, :create, :new, :update]

  # GET /songs
  # GET /songs.json
  def index
    #s3 = Aws::S3::Resource.new(region: ENV['AWS_REGION'])
    #song_bucket = s3.bucket(ENV['SONG_BUCKET_NAME'])
    #@songs = song_bucket.objects.collect(&:public_url)
    #@songs = Song.paginate(page: params[:page])
    #@songs = song_bucket.objects
    @songs = Song.paginate(page: params[:page])

  end

  # GET /songs/1
  # GET /songs/1.json
  def show
  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  # POST /songs.json
  def create
    #puts params.fetch(:song, {})

    #uploader = SongUploader.new
    #file = params[:file]
    #uploader.store!(file)
    #puts "params are:"
    #puts song_params
    #puts file
    #puts params.fetch(:song, {})
    puts "___file is:________"
    puts upload_params[:file]

    params[:url] = "www.hello.com"

    uploader = SongUploader.new
    uploader.store!(upload_params[:file])

    @song = Song.new(song_params)



    #puts @song.plays
    #@song.file= file.url
    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'Song was successfully created.' }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song, notice: 'Song was successfully updated.' }
        format.json { render :show, status: :ok, location: @song }
      else
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_url, notice: 'Song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private


    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    def upload_params
      params.require(:file).permit(:file)
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      #params.fetch(:song, {})
      params.require(:song).permit(:title, :artist, :file)
    end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def admin_user
      redirect_to root_url unless current_user.admin?
    end

    def download_url_for
    end
end
