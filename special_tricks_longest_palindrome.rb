def longest_palindrome(sentence)
  max_length = 1
  1.upto(sentence.length - 2) do |i|
    offset = 1
    length = 1
    while sentence[i + offset] == sentence[i - offset] && i + offset < sentence.length && i - offset >= 0 do
      length += 2
      offset += 1
    end
    if length > max_length
      max_length = length
    end
  end

  0.upto(sentence.length - 1) do |i|
    offset = 1
    length = 0
    while sentence[i + offset] == sentence[i - offset + 1] do
      length += 2
      offset += 1
    end
    if length > max_length
      max_length = length
    end
  end
  max_length
end

puts longest_palindrome('1234224321')
