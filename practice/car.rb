class MyCart
  attr_accessor :color
  attr_reader :year

  def initialize(year, c, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph"
  end

  def current_speed
    puts "You are now going #{current_speed} mph"
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end
end

sedona = MyCar.new(2016, 'Kia Sedona', 'black')
sedona.speed_up(35)
sedona.current_speed
sedona.speed_up(10)
sedona.current_speed
sedona.brake(10)
sedona.current_speed
sedona.brake(35)
sedona.current_speed
sedona.shut_down
sedona.current_speed
