class RomanNumConvertor
  attr_accessor :roman_num

  def initialize(roman_num)
    @roman_num = roman_num
  end

  def convert
    @roman_num = @roman_num.split("").collect do |letter|
      case letter
      when "I" then 1
      when "V" then 5
      when "X" then 10
      when "L" then 50
      when "C" then 100
      when "D" then 500
      when "M" then 1000
      else
        puts "Please enter a roman numeral:"
      end
    end
    @roman_num.reduce(:+)
  end
end

puts "Enter a Roman Numeral:"
roman = gets.chomp.upcase
result = RomanNumConvertor.new(roman).convert
puts "#{roman} -> #{result}"
