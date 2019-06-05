# Given an array of integers that can be both +ve and -ve, find the contiguous subarraywith the largest sum.
# Kadane's algorithm
# [-2, -3, 4, -2, 4, -1] => [0, 0, 4, 2, 6, 5]
# [5,-1, 4, 3, -6, 5] => [5,4,8,11,5,10]

def subarray(array)
  copy = array.clone
  i = 0
  sum = 0
  while i < array.length do
    if array[i] < 0 && sum == 0
      array[i] = 0
    else
      array[i] = array[i] + sum
      sum = array[i]
    end
    i += 1
  end

  max_index = array.index(array.max)
  start_index = 0

  until array[start_index] > 0 do
    start_index += 1
  end

  copy[start_index..max_index]
end

#array = [-1, -3, 4, 0, -4, 10]
#[0, 0, 4, 4, 0, 10]
