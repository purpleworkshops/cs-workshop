# Sum a mathematical series
# 0 + 1 + 2 + 3 + .... n
#
# With a Loop: 
total = 0
upper_limit = 25
1.upto(upper_limit) do |n|
  total += n  
end
puts "Sum total using a loop: #{total}"

# With recursion: 
#
total = 0
upper_limit = 25

# 25 + 24 + 23 + 22 + 21 ... + 3 + 2 + 1 + 0
def sum(n)
  return 0 if n == 0   # base case
  return n + sum(n-1)
end

total = sum(upper_limit)
puts "Sum total using recursion: #{total}"








# DEMO FOR LATER: Fibonacci series
# index = 45
# def fib(n)
#   return 1 if n <= 1
#   return fib(n-2) + fib(n-1)
# end

# total = fib(index)
# puts "Fibonacci of the #{index}th element: #{total}"
