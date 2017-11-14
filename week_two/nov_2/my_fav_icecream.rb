class FavoriteIceCream
  attr_accessor :fav_icecream

  def initialize(fav_icecream)
    @fav_icecream = fav_icecream
  end

  def print
    puts "My favorite ice-cream is: #{@fav_icecream}"
  end
end

puts "Please enter your favorite ice cream: "
flavor = gets.chomp

favorite = FavoriteIceCream.new(flavor)
puts favorite.print
