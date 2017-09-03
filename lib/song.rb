class Song

  attr_reader :genre
  attr_accessor :artist

  def initialize(song_name, genre_object)
    @name = song_name
    @genre = genre_object
    # @artist is also a variable that we don't initialize

    #tell genre that this song exists
    genre_object.songs << self
  end

end
