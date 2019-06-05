# print permutations of size 3
def permutations(array, buffer=[], buffer_index=0, in_buffer=[])
  if buffer_index == 2
    p buffer
    return buffer
  end

  0.upto(array.length - 1) do |i|
    if !in_buffer[i]
      buffer[buffer_index] = array[i]
      in_buffer[i] = true
      permutations(array, buffer, buffer_index + 1, in_buffer)
      in_buffer[i] = false
    end
  end
end

permutations([5,6,7])
