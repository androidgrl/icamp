def swap(array, first, second)
  value = array[first]
  array[first] = array[second]
  array[second] = value
end

def partition(array, start, finish)
  pivot = start
  counter = start
  while counter < finish
    if array[counter] <= array[finish]
      swap(array, counter, pivot)
      pivot += 1
    end
    counter += 1
  end
  swap(array, pivot, finish)
  return pivot
end

def quick_sort(array, start, finish)
  if start < finish
    pivot = partition(array, start, finish)
    quick_sort(array, start, pivot - 1)
    quick_sort(array, pivot + 1, finish)
  end
end

array = [5, 2, 13, 8, 16, 12]
quick_sort(array, 0, 4)
p array
