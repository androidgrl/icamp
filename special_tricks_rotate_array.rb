# rotate array by x times

def swap(array, x, y)
  first = array[x]
  array[x] = array[y]
  array[y] = first
end

def reverse(array, start, finish)
  return if start >= finish
  swap(array, start, finish)
  reverse(array, start + 1, finish - 1)
end

def rotate(array, x)
  reverse(array, 0, array.length - 1)
  reverse(array, 0, x - 1)
  reverse(array, x, array.length - 1)
  array
end

p rotate([1,2,3,4,5], 3)
#[3,4,5,1,2]
