class Tree
  attr_accessor :head

  def append(node)
    tail = tail(node)
    if tail
      if tail.data < node.data
        tail.right_node = node
      else
        tail.left_node = node
      end
    else
      self.head = node
    end
  end

  def tail(node, current_node=head)
    return nil if current_node.nil?
    if current_node.data < node.data
      if current_node.right_node
        return tail(node, current_node.right_node)
      else
        return current_node
      end
    else
      if current_node.left_node
        return tail(node, current_node.left_node)
      else
        return current_node
      end
    end
  end

  def find_node(data, current_node=head)
    return nil if current_node.nil?
    if current_node.data < data
      if current_node.right_node && current_node.right_node.data == data
        return current_node.right_node
      else
        return find_node(data, current_node.right_node)
      end
    elsif current_node.data > data
      if current_node.left_node && current_node.left_node.data == data
        return current_node.left_node.data
      else
        return find_node(data, current_node.left_node)
      end
    else
      return current_node
    end
  end

  def traverse(current_node=head)
    return if current_node.nil?
    traverse(current_node.left_node)
    puts current_node.data
    traverse(current_node.right_node)
  end
end

class Node
  attr_accessor :left_node, :right_node
  attr_reader :data

  def initialize(data)
    @data = data
  end
end

tree = Tree.new
one = Node.new(1)
two = Node.new(2)
three = Node.new(3)
four = Node.new(4)
five = Node.new(5)
six = Node.new(6)
seven = Node.new(7)
tree.append(four)
tree.append(two)
tree.append(six)
tree.append(one)
tree.append(three)
tree.append(five)
tree.append(seven)
tree.traverse
