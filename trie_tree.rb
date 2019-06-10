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
    match = current_node.child_nodes[c]
    if match
      return match
    else
      node = Node.new(c)
      current_node.child_nodes[c] = node
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
    return false if !current_node
    match = current_node.child_nodes[c]
    return false if !match
    match
  end
end

class Node
  attr_reader :data, :child_nodes
  attr_accessor :is_word

  def initialize(data)
    @data = data
    @child_nodes = {}
    @is_word = false
  end
end

trie = Trie.new
trie.add_word('be')
trie.add_word('bet')
trie.add_word('better')
trie.add_word('begin')
trie.add_word('beg')
trie.add_word('begs')
trie.add_word('bat')
trie.add_word('cat')
puts trie.word_exists?('bet')
puts trie.word_exists?('b')
puts trie.word_exists?('cat')
puts trie.word_exists?('better')
p trie.list_words('be')

#be, bet, better, begin, beg, begs
#b-e*-t*-t-e-r*
#    -g*-i-n*
#       -s*
