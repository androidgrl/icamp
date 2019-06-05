def search(array, target)
  first = 0
  last = array.length - 1
  mid = 0

  while first <= last do
    mid = (first + last) / 2
    if array[mid] == target
      return mid
    elsif array[mid] < target
      first = mid + 1
    else
      last = mid - 1
    end
  end

  if array[mid] < target
    return mid + 1
  else
    return mid
  end
end
p search([1,3,5,7,8], 6)
