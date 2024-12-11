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
  
  attr_accessor :root

  class Node
    attr_accessor :data
    attr_accessor :left
    attr_accessor :right

    def initialize(data)
      @data = data
    end
  end

  # Recursive implentation
  def add(value, node = nil)
    if root.nil?
      @root = Node.new(value)
      return
    end

    node ||= root  
    if value < node.data 
      node.left ? add(value, node.left) : node.left = Node.new(value)
    elsif value > node.data
      node.right ? add(value, node.right) : node.right = Node.new(value)
    end
  end

  # Iterative implementation
  # def add(value)
  #   if root.nil?
  #     @root = Node.new(value)
  #     return
  #   end
    
  #   candidate = root
  #   current = root

  #   while current
  #     candidate = current
  #     if value < current.data
  #       current = current.left
  #     elsif value > current.data
  #       current = current.right
  #     end
  #   end

  #   if value < candidate.data 
  #     candidate.left = Node.new(value)
  #   elsif value > candidate.data
  #     candidate.right = Node.new(value)
  #   end
  # end

  def get(index)
  end

  def size(node)
    return 0 if node.nil?
    1 + size(node.left) + size(node.right)
  end

  def delete(value)
  end

  def traverse(node = nil)
    return if node.nil?
    puts node.data
    traverse(node.left)
    traverse(node.right)
  end
  
end

# UNCOMMENT these lines as desired
begin
  require_relative './ruby_assertions'

  container = BinaryTree.new
  container.add(1)
  container.add(10)
  container.add(5)
  container.add(8)
  container.add(20)
  container.add(4)
  assert container.root

  assert_equal 6, container.size(container.root)
  container.traverse(container.root)

  puts "All tests passed!".green
rescue => e
  puts e.to_s.red
  puts e.backtrace

end