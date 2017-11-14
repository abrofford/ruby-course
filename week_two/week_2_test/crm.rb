user1 = [first_name: "Joel", last_name: "Brofford", age: 39]
user2 = [first_name: "Amanda", last_name: "Brofford", age: 41]
user3 = [first_name: "Bonnie", last_name: "Thompson", age: 66]
user4 = [first_name: "Patrick", last_name: "Thompson", age: 67]

crm_users = [[user1], [user2], [user3], [user4]]

puts "Enter option Add / Remove / Find: "
response = gets.chomp.capitalize
 if response == "Add"
   puts "Enter user First Name:"
   first_name = gets.chomp
  puts "Enter user last name:"
   last_name = gets.chomp
    << []
   puts "Enter user age:"
   age = gets.chomp
    << []
   user[first_name, last_name, age] << crm_users.new[]
 end



 elsif response == "Find"
   puts "Enter user First Name:"
   first = gets.chomp.capitalize
   puts "Enter user Last Name:"
   last = gets.chomp.capitalize
   puts crm_users.each {|u| u.include?(first)}
 end
 elsif response == "Remove"
   puts "Enter user First Name:"
   first = gets.chomp.capitalize
   puts "Enter user Last Name:"
   last = gets.chomp.capitalize
   puts
 end
 else
   puts "Invalid entry"
 end
end
