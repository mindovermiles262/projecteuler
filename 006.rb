## The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
#
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred
## natural numbers and the square of the sum.

def sum (max)
  sum = 0
  for i in 1..max
    sum += (i*i)
  end
  return sum
end

def square (max)
  sum = 0
  for i in 1..max
    sum += i
  end
  sum = (sum*sum)
  return sum
end

def dif(max)
  difference = square(max) - sum(max)
  return difference
end

puts(dif(100))
#returns 25164150
