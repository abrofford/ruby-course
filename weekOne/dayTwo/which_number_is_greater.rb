puts "Enter a number"
number_1=gets.chomp
puts "Enter another number"
number_2=gets.chomp

if number_1 > number_2
  puts number_1 + " " + "is bigger than" + " " + number_2
else
  puts number_2 + " " + "is bigger than" + " " + number_1
end
