class Trie
  attr_accessor :root

  def initialize
    @root = Node.new('*')
  end

  def add_word(word)
    characters = word.downcase.chars
    current_node = root
    characters.each do |c|
      current_node = add_character(c, current_node)
    end
    current_node.is_word = true
  end

  def add_character(c, current_node)
    match = current_node.child_nodes.find { |n| n.data == c }
    if match
      return match
    else
      node = Node.new(c)
      current_node.child_nodes << node
      node
    end
  end

  def word_exists?(word)
    current_node = root
    word.chars.each do |c|
      current_node = find_character(c, current_node)
    end
    current_node && current_node.is_word == true
  end

  def find_character(c, current_node)
    match = current_node.child_nodes.find { |n| n.data == c }
    if match
      match
    else
      return false
    end
  end
end

class Node
  attr_reader :data, :child_nodes
  attr_accessor :is_word

  def initialize(data)
    @data = data
    @child_nodes = []
    @is_word = false
  end
end

trie = Trie.new
trie.add_word('be')
trie.add_word('bet')
puts trie.word_exists?('bet')
puts trie.word_exists?('b')
puts trie.word_exists?('c')
'*'
'b'
'e^'
't^'
