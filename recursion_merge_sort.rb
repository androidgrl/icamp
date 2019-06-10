def merge(array, start, middle, finish)
  i = 0
  j = 0
  k = start

  low_half = array[start..middle]
  high_half = array[middle+1..finish]

  while i < low_half.length && j < high_half.length do
    if low_half[i] < high_half[j]
      array[k] = low_half[i]
      i += 1
    else
      array[k] = high_half[j]
      j += 1
    end
    k += 1
  end

  while i < low_half.length do
    array[k] = low_half[i]
    i += 1
    k += 1
  end

  while j < high_half.length do
    array[k] = high_half[j]
    j += 1
    k += 1
  end
end

def merge_sort(array, start=0, finish=array.length - 1)
  if start < finish
    middle = (start + finish) / 2
    merge_sort(array, start, middle)
    merge_sort(array, middle + 1, finish)
    merge(array, start, middle, finish)
  end
end

array = [8,4,2,-9,0,4,7,8]
merge_sort(array)
p array
