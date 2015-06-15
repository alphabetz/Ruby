#Optimize solution of problem no.1

def sumdivideby(n)
  target = 999
  p = target / n
  return n * p * (p + 1) / 2
end

puts sumdivideby(3) + sumdivideby(5) - sumdivideby(15)
