class Room

  attr_reader(:songs)

  def initialize(guests, songs)
    @guests = guests
    @songs = songs
  end

  def add_song_into_room(song)
    return @songs << song
  end

  def number_of_songs
    return @songs.length
  end

end