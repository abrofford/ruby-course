puts "Enter a fun phrase"
phrases = []
while true
  input = gets.chomp
  break if input.empty?
  phrases << input
#input_array = ARGV
end
count = []
counts = Hash.new(0)
counts.each { |count| counts [phrases] += 1}
  if phrases == count [phrases += 1]
  else
  puts "phrases + ":" + counts"
# counts = Hash.new(0)
#phrases_match.each { |phrases| counts [phrases] += 1}
#puts "#{phrases}: "

end
