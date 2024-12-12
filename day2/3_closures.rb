# Fix this code 
#
play_lottery = lambda do  # closure
  puts "your lucky number is #{favorite_number}."
end
favorite_number = 99
 
def greet(name, x)
  puts "Hello, #{name}"
  x.call()
end

greet("Jeff", play_lottery)