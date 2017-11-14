class BeerSong

  def print_num_bottles
    bottles = 100
    100.times do bottles -= 1
      if bottles != 0
        puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
        Take one down and pass it around, #{bottles-1} bottles of beer on the wall"
      else bottles == 0
        puts "there are zero bottles of beer left on the wall"
      end
    end
  end
end

my_beer_song = BeerSong.new
puts my_beer_song.print_num_bottles
