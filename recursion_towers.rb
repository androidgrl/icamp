def move_disk(quantity, from, to, via)
  if quantity == 1
    to.unshift(from.shift)
  else
    move_disk(quantity - 1, from, via, to)
    to.unshift(from.shift)
    move_disk(quantity - 1, via, to, from)
  end
end

a = [*1..20]
b = []
c = []

move_disk(20, a, b, c)
p a, b, c

#[1,2], [], []
#[2], [], [1]
#[], [2], [1]
#[], [1,2], []
