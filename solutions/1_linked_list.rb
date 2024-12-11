# CHALLENGE: 
# Implement a linked list structure that supports the four methods below:
#   add(): adds a new element to the list
#   get(): retrieves an element from the list given a zero-based index
#   size(): retrieves the number of elements in the list
#   delete() deletes an element from the list
#   traverse() prints every element in the list to the screen
# 
# 1. TRY to use as little memory as possible.
# 2. DO NOT worry about time performance or efficience.
# 3. You may NOT use any built-in data structures other than primitives 
# such as integers, strings, and your own structures.
# 
# Bonus: 
#   implement update() to replace an element in the list.
#   implement sort() to return a new, sorted list.
# 
# MODIFY THIS CODE ANY WAY YOU WANT.  The code below is just a starting point
# and not intended to imply any restrictions.
#
# UNCOMMENT THE TEST CODE at the end to verify that your code is working.
# 
class LinkedList
  
  attr_accessor :head

  class Node
    attr_accessor :data
    attr_accessor :next
    def initialize(data)
      @data = data
    end
  end

  def intialize
    @head = nil
  end

  def add(value)
    if head.nil?
      @head = Node.new(value)
    else
      last_node = find_tail  # Queue vs Stack
      last_node.next = Node.new(value)
    end
  end

  # z = LinkedList.new
  def get(index)
    n = 0
    current = head
    while (n < index)
      if current.next
        current = current.next
        n += 1
      else
        raise "Index out of bounds."
      end
    end
    current.data
  end

  def size
    n = 0
    current = head
    while current
      n += 1
      current = current.next
    end
    n
  end

  def delete(value)
  end

  def traverse
  end
  
  def find_tail
    current = head
    while (current && current.next)
      current = current.next
    end
    current
  end
end

# UNCOMMENT these lines as desired
begin
  require_relative './ruby_assertions'

  list = LinkedList.new
  list.add(1)
  list.add(10)
  list.add(5)

  assert_equal 3, list.size
  assert_equal 10, list.get(1)
  list.traverse()

  puts "All tests passed!".green

rescue => e
  puts e.to_s.red
  puts e.backtrace[0].red

end