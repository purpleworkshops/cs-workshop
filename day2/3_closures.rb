# Fix this code 
# 
def greet(name)
  
  def play_lottery
    puts "#{name}, your lucky number is 21."
  end

  puts "Hello, #{name}"
  play_lottery.call()
end

greet("Jeff")