i=0 and until (i==100) do
  i+=1
  if i % 3 == 0
    puts "Fizz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif ((i % 3 == 0) && i % (5 == 0))
    puts "FizzBuzz"
  else
    puts i
  end
end
