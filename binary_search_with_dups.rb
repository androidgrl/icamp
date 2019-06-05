def search(array, target)
  first = 0
  last = array.length - 1

  while first <= last do
    mid = (first + last) / 2
    if array[mid] == target
      if array[mid - 1] == target
        return mid - 1
      else
        return mid
      end
    elsif array[mid] > target
      last = mid - 1
    else
      first = mid + 1
    end
  end

  -1
end

p search([1,2,2,3,4,5,5], 5)
