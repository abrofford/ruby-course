class Siblings
  attr_accessor :sibling_1, :sibling_2, :sibling_3, :sibling_4

  def initialize(sibling_1, sibling_2, sibling_3, sibling_4)
    @sibling_1 = sibling_1
    @sibling_2 = sibling_2
    @sibling_3 = sibling_3
    @sibling_4 = sibling_4
  end

  def print
    puts "My siblings are #{@sibling_1}, #{@sibling_2}, #{@sibling_3} and #{@sibling_4}"
  end
end

puts "Enter first sibling"
first = gets.chomp

puts "Enter second sibling"
second = gets.chomp

puts "Enter thrid sibling"
third = gets.chomp

puts "Enter fourth sibling"
fourth = gets.chomp

siblings = Siblings.new(first, second, third, fourth)
puts siblings.print
