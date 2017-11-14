class Customer
  attr_accessor :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
end

class FindCustomer
  attr_accessor :customers

  def initialize(customers)
    @customers = customers
  end

  def add_customer(customer)
    @customers << customer
  end

  def remove_customer(customer)
    @customers.delete
  end

  def find(first_name, last_name)
    @customers.each do |customer|
      if (customer.first_name == first_name) && (customer.last_name == last_name)
        puts "#{customer.first_name} #{customer.last_name}, #{customer.age}"
      end
    end
  end
end

customers = [Customer.new("J", "J", "39"), Customer.new("Joel", "Brofford", "39"), Customer.new("Ashley", "Brofford", "18"), Customer.new("Amber", "Brofford", "7"), Customer.new("Emma", "Brofford", "7")]
find_customer = FindCustomer.new(customers)

puts "Welcome to your CRM!"
loop do
  puts "Please choose your action (add / find / remove): "
  selection = gets.chomp
    if selection == "add"
      puts "Enter customer first name:"
      first_name = gets.chomp.capitalize
      puts "Enter customer last name:"
      last_name = gets.chomp.capitalize
      puts "Enter customer age:"
      age = gets.chomp.to_i
      customers << find_customer.add_customer(Customer.new(first_name, last_name, age))
    elsif selection == "find"
      puts "Enter customer firstname:"
      first_name = gets.chomp.capitalize
      puts "Enter customer last name:"
      last_name = gets.chomp.capitalize
      find_customer.find(first_name, last_name)
    else selection == "remove"
      puts "Enter customer first name: "
      first_name = gets.chomp.capitalize
      puts "Enter customer last name"
      last_name = gets.chomp.capitalize
      remove_customer.remove(first_name, last_name, age)
    end
end
