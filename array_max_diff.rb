# If we have an array of stock values find the maximum trade you can make

def max_trade(array)
  max_diff = 0
  min_value = 1000
  0.upto(array.length - 1) do |i|
    if array[i] < min_value
      min_value = array[i]
    end
    diff = array[i] - min_value
    if diff > max_diff
      max_diff = diff
    end
  end
  max_diff
end

def max_two_trades(array)

end

puts max_trade([8,14,9,2,6,30,3])
