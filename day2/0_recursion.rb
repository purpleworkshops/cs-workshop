# Sum a mathematical series
# 0 + 1 + 2 + 3 + .... n
#
# With a Loop: 
# total = 0
# upper_limit = 25
# 1.upto(upper_limit) do |n|
#   total += n  
# end
# puts "Sum total using a loop: #{total}"

# # With recursion: 
# #
# total = 0

# 25 + 24 + 23 + 22 + 21 ... + 3 + 2 + 1 + 0
def sum(n)
  return 0 if n == 0   # base case
  return n + sum(n-1)
end

upper_limit = 25000000000
total = sum(upper_limit)
puts "Sum total using recursion: #{total}"








# DEMO FOR LATER: Fibonacci series
# 0 1 2 3 4 5 6 7 8 9
# 0 1 1 2 3 5 8 13 21 34 ...
# index = 45
# def fib(n)
#   return n if n <= 1
#   return fib(n-1) + fib(n-2)
# end

# puts "Starting recursion..."
# index = 45
# total = fib(index)
# puts "Fibonacci of the #{index}th element: #{total}"
