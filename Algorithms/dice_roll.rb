#You're programming a backgammon game, and are working on the dice roll method. Given two ints, return their #sum. However, if the two numbers are the same, return double their sum. \

def dice_roll(a, b)
  sum = a == b ? (a + b) * 2 : a + b
  return sum
end

a = 5
b = 5
puts dice_roll(a, b)
