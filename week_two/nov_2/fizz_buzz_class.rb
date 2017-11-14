class FizzBuzz

    def fizz_buzz
    (1 .. 100).each do |i|
      if ( i % 3 == 0) && ( i % 5 == 0)
        puts "FizzBuzz"
      elsif ( i % 3 == 0)
        puts "Fizz"
      else ( i % 5 == 0)
        puts "Buzz"
      end
    end
  end
end

fizzbuzz = FizzBuzz.new
fizzbuzz.fizz_buzz
