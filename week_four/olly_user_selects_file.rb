class FileReader
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def itself_counter
    word_count = 0
    puts "What file do you want to open?"
    user_file = gets.chomp
    File.open(user_file, "r") do |f|
      f.each_line do |line|
        if line.include? @word
          word_count += 1
        end
      end
    end
    p word_count
  end
end

puts "Enter word to find how many times it is used in the file: "
user_word = gets.chomp
user_word = FileReader.new(user_word)
user_word.itself_counter
