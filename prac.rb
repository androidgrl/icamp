def swap(array, x, y)
  first = array[x]
  array[x] = array[y]
  array[y] = first
end

def partition(array, start, finish)
  pivot = start
  counter = start
  while counter < finish
    if array[counter] <= array[finish]
      swap(array, pivot, counter)
      pivot += 1
    end
    counter += 1
  end
  swap(array, finish, pivot)
  return pivot
end

def quick_sort(array, start=0, finish=array.length - 1)
  if start < finish
    pivot = partition(array, start, finish)
    quick_sort(array, start, pivot - 1)
    quick_sort(array, pivot + 1, finish)
  end
end

array = [6,8,3,-2,5,10,0,3]
quick_sort(array)
p array
