#assume positive x & n make O(log(n)) time

def powers(x, n)
  if n == 0
    return 1
  else
    return powers(x, n - 1) * x
  end
end

#O(n)
def powers_linear(x, n)
  if n == 0
    return 1
  elsif n % 2 == 0
    return powers_linear(x, n / 2) * powers_linear(x, n / 2)
  else
    return powers_linear(x, n / 2) * powers_linear(x, n / 2) * x
  end
end

#O(log(n))
def powers_logarithmic(x, n)
  if n == 0
    return 1
  end
  temp = powers_logarithmic(x, n / 2) * powers_logarithmic(x, n / 2)
  if n % 2 == 0
    return temp
  else
    return temp * x
  end
end

puts powers_logarithmic(2, 10)
