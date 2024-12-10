# CHALLENGE: 
# Implement a binary tree structure that supports the four methods below:
#   add(): adds a new element to the list
#   get(): retrieves an element from the list given a zero-based index
#   size(): retrieves the number of elements in the list
#   delete() deletes an element from the list
#   traverse() prints every element in the list to the screen
# 
# Bonus: 
#   implement update() to replace an element in the list.
# 
# You MAY use the built-on Array class, but otherwise stick to primitives.
# 
# MODIFY THIS CODE ANY WAY YOU WANT.  The code below is just a starting point
# and not intended to imply any restrictions.
#
# UNCOMMENT THE TEST CODE at the end to verify that your code is working.
# 
class BinaryTree
  
  def add(value)
  end

  def get(index)
  end

  def size
  end

  def delete(value)
  end

  def traverse
  end
  
end

# UNCOMMENT these lines as desired
# begin
#   require_relative './ruby_assertions'

#   container = BinaryTree.new
#   container.add(1)
#   container.add(10)
#   container.add(5)

#   assert_equal 3, container.size
#   assert_equal 10, container.get(1)
#   container.traverse(container.root)
#
#   puts "All tests passed!".green
# rescue => e
#   puts e.to_s.red

# end