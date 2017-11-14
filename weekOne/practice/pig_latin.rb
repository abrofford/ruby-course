puts "Please enter a word"
word = gets.chomp

vowell = word.start_with?("a", "e", "i", "o", "u")



case
  when word == vowell then word + "ay"
end
