puts "Enter your first name"
name = gets.chomp

if name.length > 5
  puts "#{name} is bigger than five characters"
else name.length < 5
  puts "#{name} is smaller than five characters"
end
