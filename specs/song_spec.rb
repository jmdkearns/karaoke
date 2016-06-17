require('minitest/autorun')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new ("Shutdown")
    @song2 = Song.new ("Juice")
    @song3 = Song.new ("That's Not Me")
    @song4 = Song.new ("3 Wheel-ups")

    songs = [@song1, @song2, @song3, @song4]
  end

  def test_song_has_title
    assert_equal( "Shutdown", @song1.title )
  end

end