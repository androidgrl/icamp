def swap(array, i, j)
  first = array[i]
  array[i] = array[j]
  array[j] = first
  array
end

def arrange(array, index)
  value = array[index]
  low = -1
  mid = -1
  high = array.length

  while mid + 1 < high do
    if array[mid + 1] < value
      swap(array, mid + 1, low + 1)
      low += 1
      mid += 1
    elsif array[mid + 1] > value
      swap(array, mid + 1, high - 1)
      high -= 1
    else
      mid += 1
    end
  end
  array
end

array = [3,5,2,6,8,4,4,6,4,4,3]
p arrange(array, 5)
