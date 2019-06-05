def move_zeros(array)
  count = 0
  i = 0
  while i < array.length do
    if array[i] != 0
      array[count] = array[i]
      count += 1
    end
    i += 1
  end
  count.upto(array.length - 1) do |c|
    array[c] = 0
  end
  array
end

array = [0,0,3,2,0,1,0,0]
p move_zeros(array)
