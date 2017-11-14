class PigLatin

  def initialize(word)
    @word = word
  end

  def word_in_piglatin
    vow = ["a", "e", "i", "o", "u"]
    con = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q",
    "r", "s", "t", "v", "w", "x", "y", "z"]
    if vow.include?(@word[0])
      puts "#{@word}ay"
    elsif con.include?(@word[0])
      temp_letter = @word[0]
      @word[0] = ""
      @word = @word + temp_letter
      puts "#{@word}ay"
    else
      puts "try again"
    end
  end
end

puts "Enter any word:"
word = gets.chomp
apple = PigLatin.new(word)
apple.word_in_piglatin
