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

def summ(max):
    sum = 0
    for i in range(0, max + 1):
        add = i * i
        sum += add
    return sum

def square(max):
    sum = 0
    for i in range(0, max + 1):
        sum += i
    output = (sum * sum)
    return output

def dif(max):
    dif = square(max) - summ(max)
    return dif

print(dif(100))
#returns 25164150
