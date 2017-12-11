class WordCounter
  attr_accessor :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def counter
    words = @phrase.upcase.split
    occurances = {}
    words.uniq.each{|word| occurances[word] = words.count(word)}
    p occurances
  end
end

loop do
puts "Enter a phrase to see how many times each word is used: "
user_phrase = gets.chomp

word_counter = WordCounter.new(user_phrase)
word_counter.counter
end
