#reverse the words in a string in place

def swap(string, x, y)
  first = string[x]
  string[x] = string[y]
  string[y] = first
end

def reverse(string, start, finish)
  return if start >= finish
  swap(string, start, finish)
  reverse(string, start + 1, finish - 1)
end

def reverse_sentence(sentence)
  reverse(sentence, 0, sentence.length - 1)
  start = 0
  0.upto(sentence.length - 1) do |i|
    if sentence[i + 1] == ' ' || i == sentence.length - 1
      reverse(sentence, start, i)
      start = i + 2
    end
  end
  sentence
end

puts reverse_sentence('I\'ll love you')
