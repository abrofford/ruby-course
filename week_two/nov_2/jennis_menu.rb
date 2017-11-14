class JennisMenu
  attr_accessor :flavor_1, :price_1, :flavor_2, :price_2

  def initialize(flavor_1, price_1, flavor_2, price_2)
    @flavor_1 = flavor_1
    @price_1 = price_1
    @flavor_2 = flavor_2
    @price_2 = price_2
  end

  def print
    puts "Jenni's Menu \n #{@flavor_1} - $#{@price_1} \n #{@flavor_2} - $#{@price_2}"
  end
end

puts "Enter item flavor"
item_1 = gets.chomp

puts "Enter price"
cost_1 = gets.chomp

puts "Enter item flavor"
item_2 = gets.chomp

puts "Enter item flavor"
cost_2 = gets.chomp

menu = JennisMenu.new(item_1, cost_1, item_2, cost_2)
puts menu.print
