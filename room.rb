class Room

  attr_reader(:guests, :songs)

  def initialize(guests, songs)
    @guests = guests
    @songs = songs
    @capacity = 8
  end

  def add_song_to_room(song)
    return @songs << song
  end

  def number_of_songs
    return @songs.length
  end

  def add_guest_to_room(guest)
    # ternary check if guests is less than capacity and if true it will add the guest into the room, else it display message saying room is full.
    return number_of_guests < @capacity ? @guests << guest : "Sorry this room is full."
  end

  def number_of_guests
    return @guests.length
  end

 def remove_guest_from_room(guest)
  return guests.pop
 end

end