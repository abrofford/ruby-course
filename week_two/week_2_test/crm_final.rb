class User
  attr_accessor :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def users
    users[@first_name, @last_name, @age]
  end
end
puts "Enter option Add / Remove / Find: "
response = gets.chomp.capitalize
  if response == "Add"
    puts "Enter user first name:"
    @first_name << users
    puts "Enter user last name:"
    last_name << users
    puts "Enter user age:"
    age << users


  elsif response == "Remove"
    puts "Enter user first name:"
    first_name = gets.chomp.capitalize
    puts "Enter user last name"
    last_name = gets.chomp.capitalize

  elsif response == "Find"
    puts "Enter user first name:"
    first_name = gets.chomp.capitalize
    puts "Enter user last name:"
    last_name = gets.chomp.capitalize

  else
    puts "invalid entry"
  end
