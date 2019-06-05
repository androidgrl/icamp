def reverse_sentence(sentence)
  end_index = sentence.length - 1
  current_index = sentence.length - 1
  reversed = ''
  while current_index >= 0 do
    if sentence[current_index - 1] == ' ' || current_index == 0
      reversed += sentence[current_index..end_index] + ' '
      current_index -= 2
      end_index = current_index
    else
      current_index -= 1
    end
  end
  reversed
end

sentence = 'one two three four'
puts reverse_sentence(sentence)
