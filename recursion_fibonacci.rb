#Find the Nth element of the Fibonacci series - 1,1,2,3,5,8,
#with memoization so time complexity of O(n)

def fibbonacci(n, hash={})
  if n == 1 || n == 2
    return 1
  elsif hash[n]
    return hash[n]
  end

  result = fibbonacci(n - 1, hash) + fibbonacci(n - 2, hash)
  hash[n] = result
  return result
end

puts fibbonacci(40)
