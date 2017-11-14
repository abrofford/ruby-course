class Fahrenheit
  attr_accessor :temp_type, :temperature

  def initialize(temp_type, temperature)
    @temp_type = temp_type
    @temperature = temperature
  end

  def choice
    if @temp_type == "C"
      (1.8*@temperature) + 32
    elsif @temp_type == "F"
      (@temperature - 32)*0.5556
    else
      puts "Enter enter temperature to convert:"
    end
  end
end

loop do
  puts "Enter Celsius or Fahrenheit:"
  temp_type = gets.chomp.upcase

  puts "Enter temperature in Celsius: "
  temperature = gets.chomp.to_f

  temperature_calc = Fahrenheit.new(temp_type, temperature)
  puts "#{temperature} at #{temp_type} is: #{temperature_calc.choice}"
end
