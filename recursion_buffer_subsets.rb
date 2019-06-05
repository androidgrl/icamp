def subsets(array, buffer=[], start_index=0, buffer_index=0)
  p buffer

  if buffer_index == 2
    return buffer
  end

  start_index.upto(array.length - 1) do |i|
    buffer[buffer_index] = array[i]
    subsets(array, buffer, i + 1, buffer_index + 1)
  end
end

subsets([5,6,7])
