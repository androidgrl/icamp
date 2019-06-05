def swap(array, x, y)
  first = array[x]
  array[x] = array[y]
  array[y] = first
end

def red_white_blue(array)
  low = -1
  mid = -1
  high = array.length

  while mid + 1 < high do
    if array[mid + 1] == 0
      swap(array, low + 1, mid + 1)
      low += 1
      mid += 1
    elsif array[mid + 1] == 1
      mid += 1
    else
      swap(array, high - 1, mid + 1)
      high -= 1
    end
  end
  array
end
#[0,0||1,1||0,2,1||2,2]
array = [1,2,0,1,0,2]
p red_white_blue(array)
