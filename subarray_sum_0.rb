# Given an array of integers, find the contiguous subarray that sums to 0. The array can contain both negative and positive integers.
# common diff
# [1, -4, 2, 3, -1] => [1, 4]
# [1, -3, -1, 2, 1]

def subarray(array)
  sum_to_index = {}
  i = 0
  sum = 0
  while i < array.length do
    sum += array[i]
    if sum_to_index[0]
      return [0, sum_to_index[0]]
    elsif sum_to_index[sum]
      return [sum_to_index[sum] + 1, i]
    else
      sum_to_index[sum] = i
    end
    i += 1
  end
end

p subarray([1, -4, 2, 3, -1])

# Given an array of integers find the subarray that sums to a given number X, pos and neg
# neg numbers
def subarray_neg(array, x)
  sum_to_index = {}
  i = 0
  sum = 0
  while i < array.length - 1 do
    sum += array[i]
    if sum_to_index[x]
      return [0, sum_to_index[x]]
    elsif sum_to_index[sum - x]
      return [sum_to_index[sum - x] + 1, i]
    else
      sum_to_index[sum] = i
    end
    i += 1
  end
  [-1, -1]
end

#p subarray_neg([2,-2,4,5,3,0,-13], 7)
# [2, 0, 4, 9, 12, 12, -1]
