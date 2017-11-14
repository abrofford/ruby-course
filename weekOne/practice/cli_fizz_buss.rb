puts "Please enter first value"
min = gets.chomp.to_i

puts "Please enter second value. It must be larger than the first"
max = gets.chomp.to_i

(min .. max).each do |i|

mult_3 = ( i % 3 == 0)
mult_5 = ( i % 5 == 0)

case
when mult_3 && mult_5
puts 'fizzbuzz'
when mult_3
puts 'fizz'
when mult_5
puts 'buzz'
else
puts i
end
end
