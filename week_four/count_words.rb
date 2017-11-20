class WordCounter

  attr_accessor :user_request

  def initialize(user_request)
    @user_request = user_request
  end

  def word_count
    word_occurrance = 0
    File.open("./count_words.txt", "r") do |f|
      f.each_line do |line|
        line.split.each do |word|
          if user_request == word
            word_occurrance += 1
          end
        end
      end
    end
    p word_occurrance
  end
end

puts "Enter a word and you will see how many times it was used in the cookies document: "
response = gets.chomp
request = WordCounter.new(response)
request.word_count
