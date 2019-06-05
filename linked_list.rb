class List
  attr_accessor :head

  def append(node)
    if tail
      tail.next_node = node
    else
      self.head = node
    end
  end

  def tail(current_node=head)
    if current_node.nil?
      return nil
    elsif current_node.next_node
      return tail(current_node.next_node)
    else
      return current_node
    end
  end

  def find_node(n, current_node=head)
    if n == 1
      return current_node
    elsif current_node
      return find_node(n - 1, current_node.next_node)
    end
  end

  def count(current_node=head)
    if current_node
      return count(current_node.next_node) + 1
    else
      return 0
    end
  end

  def sort
    new_list = self.class.new
    unsorted_data = []
    1.upto(count) do |i|
      unsorted_data << find_node(i).data
    end
    unsorted_data.sort.map do |d|
      new_list.append(Node.new(d))
    end
    new_list
  end

  def delete(n)
    if n == 1
      if head && head.next_node
        self.head = head.next_node
      elsif head
        self.head = nil
      end
    elsif n == count
      find_node(n - 1).next_node = nil
    else
      find_node(n - 1).next_node = find_node(n + 1)
    end
  end

  def find_location(node)
    1.upto(count) do |i|
      if find_node(i) == node
        return i
      end
    end
  end

  def reverse(prev=nil, current=head)
    if current.nil?
      self.head = prev
      return
    end
    next_node = current.next_node
    current.next_node = prev
    return reverse(current, next_node)
  end
end

class Node
  attr_reader :data
  attr_accessor :next_node

  def initialize(data)
    @data = data
  end
end
