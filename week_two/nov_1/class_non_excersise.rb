class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def  print_first_name
    puts @first_name
  end

  def print_last_name
    puts @last_name
  end
end

person = Person.new("Nikola", "Novakovic")
person.print_first_name
person.print_last_name

person = Person.new("Amanda", "Brofford")
person.print_first_name
person.print_last_name
