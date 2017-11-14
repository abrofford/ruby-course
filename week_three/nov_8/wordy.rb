class Wordy

  def initialize(word_problem)
    @word_problem = word_problem
  end

  def solve_word_problem
    @word_problem = @word_problem.split("") do |word|
      case solve
      when "plus" then word[2] + word[4]
      end

      # make sure that there is a word thats "plus"
      # Check if a string is a number
      # if it is a number add it to an array
    end
    #caulculation.reduce(:+)
  end

end

puts "Enter a math problem: "
word_problem = gets.chomp

mywordy = Wordy.new(word_problem)
puts mywordy.solve_word_problem
