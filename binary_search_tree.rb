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
end

class Node
  attr_accessor :left_node, :right_node
  attr_reader :data

  def initialize(data)
    @data = data
  end
end
