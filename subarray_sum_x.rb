# Given an array of integers find the subarray that sums to a given number X
# Q: negative? no then yes, continuous? yes, result? indices of first&last inclusive, no result? [-1,-1]

# for pos numbers
def subarray(array, x)
  first = 0
  last = 0
  sum = array[first]

  while last < array.length do
    if sum < x
      last += 1
      if last < array.length
        sum += array[last]
      end
    elsif sum > x
      first += 1
      if first < array.length
        sum -= array[first - 1]
      end
    else
      return [first, last]
    end
  end
  [-1, -1]
end

p subarray([2,1,4,5,3,0,1], 7)
