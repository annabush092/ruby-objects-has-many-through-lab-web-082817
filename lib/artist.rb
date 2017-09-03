class Artist

  attr_reader :name
  attr_accessor :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song_object)
    song_object.artist = self #tell the song that this is its artist

    song_object.genre.artists << self #tell the genre that this artist belongs to it

    #add the Genre instance of the song to this artist's @genres array, if it isn't there already
    self.genres << song_object.genre unless self.genres.include?(song_object.genre)

    self.songs << song_object #add the song object to the artist's @songs array
  end

end
