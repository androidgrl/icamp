# is elloh a rotation of hello?
# check if it is a substring of hellohello

def rotation?(string, rotation)
  double = string * 2
  double.include?(rotation)
end

puts rotation?('elloh', 'hello')
