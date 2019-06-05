# Given an array of integers, print all combinations of size X.

def combos(array, buffer=[], start_index=0, buffer_index=0)
  if buffer_index == 3
    p buffer
    return buffer
  end

  start_index.upto(array.length - 1) do |i|
    buffer[buffer_index] = array[i]
    combos(array, buffer, i + 1, buffer_index + 1)
  end
end

combos([5,6,7,8])

#0 goes in and sets buffer 0 (promises to go from 0 to 3
#1 goes in and sets buffer 1 (promises to go from 1 to 3
#2 goes in and sets buffer 2 (promises to go from 2 to 3
#3 goes in and returns back which breaks out of the (2 part of 2-3) iteration // [5, 6, 7]
#then comes the 3 part of 2-3 with buffer_index still set to 2 so it sets buffer[2] = array[3] then it ends that loop // [5, 6, 8]
#and goes back to where buffer was 1 and now 2 is left so sets buffer[1] = array[2] // [5, 7, 8]
#and goes boack to where buffer was 0 and now 1 is left so sets buffer[0] = array[1] // [6, 7, 8]
