# Why does this code work? 
# 
def greet(name):
  
  def play_lottery():
    print(f"{name}, your lucky number is 21.")

  print(f"Hello, {name}")
  play_lottery()


greet("Jeff")