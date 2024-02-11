#RGB To Hex Conversion
def rgb(r, g, b)
  r = [[r, 0].max, 255].min
  g = [[g, 0].max, 255].min
  b = [[b, 0].max, 255].min

  "%02X%02X%02X" % [r, g, b]
end

#Regex Password Validation
regex = /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])^[a-zA-Z0-9]{6,}$/

#Product of consecutive Fib numbers
def productFib(prod)
  fib = [0, 1]
  while fib[-1] * fib[-2] < prod
    fib << fib[-1] + fib[-2]
  end
  [fib[-2], fib[-1], fib[-1] * fib[-2] == prod]
end
