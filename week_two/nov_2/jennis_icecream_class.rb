class JennisMenu
  attr_accessor :type_1, :price_1, :type_2, :price_2

  def initialize(type_1, price_1, type_2, price_2)
    @type_1 = type_1
    @price_1 = price_1
    @type_2 = type_2
    @price_2 = price_2
  end
  def print
    puts "#{@type_1} - #{@price_1}\n #{@type_2} - #{@price_2}"
  end
end

puts "Enter ice cream flavor"
flavor_1 = gets.chomp

puts "Enter first flavor price"
cost_1 = gets.chomp

puts "Enter ice cream flavor"
flavor_2 = gets.chomp

puts "Enter second flavor price"
cost_2 = gets.chomp

menu = JennisMenu.new(flavor_1, cost_1, flavor_2, cost_2)
puts menu.print
