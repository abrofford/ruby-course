class Animal
  def initialize(type, name, size, activity)
    @type = type
    @name = name
    @size = size
    @activity = activity
  end
  def print_type
    puts @type
  end

  def print_name
    puts @name
  end

  def print_size
    puts @size
  end

  def print_activity
    puts @activity
  end
end

animal = Animal.new("marsupial", "koala bear", "medium", "eating")
animal.print_type
animal.print_name
animal.print_size
animal.print_activity

animal = Animal.new("feline", "bob cat", "small", "running")
animal.print_type
animal.print_name
animal.print_size
animal.print_activity

animal = Animal.new("canine", "lion", "large", "roaring")
animal.print_type
animal.print_name
animal.print_size
animal.print_activity
