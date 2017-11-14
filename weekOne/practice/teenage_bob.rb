puts "Ask Bob a question"
response = gets.chomp[-1]

case response
when "!"
  puts "Bob: Whoa, chill out!"
when "?"
  puts "Bob: Sure."
when "."
  puts "Bob: Whatever"
else
  puts "Bob: Fine.  Be that way!"
end
