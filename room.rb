class Room

  attr_reader(:guests, :songs)

  def initialize(guests, songs)
    @guests = guests
    @songs = songs
  end

  def add_song_to_room(song)
    return @songs << song
  end

  def number_of_songs
    return @songs.length
  end

  def add_guest_to_room(guest)
    return @guests << guest
  end

  def number_of_guests
    return @guests.length
  end
 
end