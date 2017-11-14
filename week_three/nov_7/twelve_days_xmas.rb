class ChristmasSong

  def print_lyrics
    day = ["First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eighth",
    "Ninth", "Tenth", "Eleventh", "Twelvth"]
    gifts = ["A Partridge in a Pear Tree", "Two Turtle Doves", "Three French Hens", "Four Calling Birds", "Five Gold Rings",
    "Six Geese-a-Laying", "Seven Swans-a-Swimming", "Eight Maids-a-Milking", "Nine Ladies Dancing",
    "Ten Lords-a-Leaping", "Eleven Pipers Piping", "Twleve Drummers Drumming"]
    day.each_with_index do |day, i|
      puts "On the #{day} day of Xmas, my true love gave to me:"
      puts gifts[0, i+1].reverse
    end
  end
end

my_xmas_song = ChristmasSong.new
puts my_xmas_song.print_lyrics
