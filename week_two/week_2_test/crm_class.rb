first_name = first_name
last_name = last_name
age = age

user = [first_name, last_name, age]

puts "Enter option Add / Remove / Find: "
response = gets.chomp.capitalize
 if response == "Add"
   puts "Enter user first name"
   first_name = gets.chomp.slice << user
   puts "Enter user last name"
   last_name << user
   puts "Enter user age"
   age << user


 elsif response == "Find"
   puts "Enter user First Name:"
   first = gets.chomp.capitalize
   puts "Enter user Last Name:"
   last = gets.chomp.capitalize
   puts crm_users.each {|u| u.include?(first)}

 elsif response == "Remove"
   puts "Enter user First Name:"
   first = gets.chomp.capitalize
   puts "Enter user Last Name:"
   last = gets.chomp.capitalize
   puts

 else
   puts "Invalid entry"
 end
# puts 'Type in as many words as you\'d like. When you\'re finished, press enter on an empty line'
#array = []
#input = ' '
#while input != ''
# input = gets.chomp
# array.push input
#end

#puts
#puts array.sort
