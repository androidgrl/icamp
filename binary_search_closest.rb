# Given a sorted array A and a target T, find the target. If the target is not in the array, find the number closest to the target. For example, if A = [2,3,5,8,9,11] and T = 7, return 8.

def search(array, target)
  first = 0
  last = array.length - 1
  closest = 0

  while first <= last do
    mid = (first + last) / 2
    if array[mid] == target
      return mid
    elsif array[mid] < target
      first = mid + 1
      if target - array[closest] > target - array[mid]
        closest = mid
      end
    else
      last = mid - 1
      if array[closest] - target > array[mid] - target
        closest = mid
      end
    end
  end

  closest
end

p search([1,3,7,8], 0)
