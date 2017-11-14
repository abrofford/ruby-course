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
      when "11" then "eleven"
      when "12" then "twelve"
      when "13" then "thirteen"
      when "14" then "fourteen"
      when "15" then "fifteen"
      when "16" then "sixteen"
      when "17" then "seventeen"
      when "18" then "eighteen"
      when "19" then "nineteen"
      when "20" then "twenty"
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
