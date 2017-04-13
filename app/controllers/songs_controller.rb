class SongsController < ApplicationController
  before_action :set_song!, only: [:show, :edit, :update]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.valid?
      # If--and only if--the song is valid, do what we usually do.
      @song.save
      # This returns a status_code of 302, which instructs the browser to
      # perform a NEW REQUEST! (AKA: throw song away and let the show action
      # worry about re-reading it from the database)
      redirect_to song_path(@song)
    else
      # If the song is invalid, hold on to @song, because it is now full of
      # useful error messages, and re-render the :new page, which knows how
      # to display them alongside the user's entries.
      render :new
    end #end if else statement
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song.update(song_params)
    if @song.valid?
      # If--and only if--the song is valid, do what we usually do.
      @song.save
      # This returns a status_code of 302, which instructs the browser to
      # perform a NEW REQUEST! (AKA: throw song away and let the show action
      # worry about re-reading it from the database)
      redirect_to song_path(@song)
    else
      # If the song is invalid, hold on to @song, because it is now full of
      # useful error messages, and re-render the :new page, which knows how
      # to display them alongside the user's entries.
      render :edit
    end #end if else statement
  end

  def destroy
    Song.find(params[:id]).destroy
    redirect_to songs_path
  end

  private

  def song_params # (*args)
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
    #params.require(:song).permit(*args)
  end

  def set_song!
    @song = Song.find(params[:id])
  end
end

# Songs have the following attributes and limitations:
# title, a string
# Must not be blank
# Cannot be repeated by the same artist in the same year
# released, a boolean describing whether the song was ever officially released.
# Must be true or false
# release_year, an integer
# Optional if released is false
# Must not be blank if released is true
# Must be less than or equal to the current year
# artist_name, a string
# Must not be blank
# genre, a string


#five attributes:::
# title, a string
# released, a boolean describing whether the song was ever officially released.
# release_year, an integer
# artist_name, a string
# genre, a string
