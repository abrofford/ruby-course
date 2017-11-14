puts "Enter first number"
first_num = gets.chomp.to_i
puts "Enter second number"
second_num = gets.chomp.to_i

if first_num > second_num
  puts "#{first_num} is bigger than #{second_num}"
else first_num < second_num
  puts "#{second_num} is bigger than #{first_num}"
end
