class NumberToWord

  def initialize number
  @number_words = @number
  end

  def convert
    @number_words = @number.split.collect do |words|
      case words
      when "1" then "one"
      when "2" then "two"
      when "3" then "three"
      when "4" then "four"
      when "5" then "five"
      when "6" then "six"
      when "7" then "seven"
      when "8" then "eight"
      when "9" then "nine"
      when "10" then "ten"
      else
        puts "please enter a digit between 1 and 20"
      end
    end
  end
end

puts "Enter number between 1 and 20"
number = gets.chomp
result = NumberToWord.new(number).convert
puts "#{result}"



class WordToNumber
  def initialize (num_word)
    @number = num_word
  end

  def translate
    @number = @number.split.collect do |word|
      case word
      when "1" then "one"
      when "2" then "two"
      when "3" then "three"
      when "4" then "four"
      when "5" then "five"
      when "6" then "six"
      when "7" then "seven"
      when "8" then "eight"
      when "9" then "nine"
      when "10" then "ten"
      else
        puts "Please enter a number between one and twenty"
      end
    end
    end
  end

puts "Enter a number between 1 and 20: "
number = gets.chomp
result = WordToNumber.new(number).translate
puts " #{result}"

#
#
#
#
#
#
#
# number = gets.chomp
# result = NumberToWord.new(number_words).convert
# puts "#{result} equals #{number_words}"
