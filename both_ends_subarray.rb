def find_sorted_subarray(array)
  i = 0
  while array[i] < array[i+1] do
    i += 1
  end

  j = array.length - 1
  while array[j] > array [j-1] do
    j -= 1
  end

  min = array[i..j].min
  max = array[i..j].max

  k = i - 1
  while k >= 0 do
    if array[k] > min
      i -= 1
    end
    k -= 1
  end

  l = j + 1
  while l <= array.length - 1 do
    if array[l] < max
      j += 1
    end
    l += 1
  end

  array[i..j]
end
array = [0,3,5,2,7,9]
p find_sorted_subarray(array)
