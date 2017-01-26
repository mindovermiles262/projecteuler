## The prime factors of 13195 are 5, 7, 13 and 29.
## What is the largest prime factor of the number 600851475143 ?

def factor(number):
    factors = []
    maximum = number
    iteration = 2
    while (iteration < maximum):
        if number % iteration == 0:
            maximum = number / iteration
            factors.append(iteration)
            factors.append(int(maximum))
            iteration += 1
        else:
            iteration += 1
    return sorted(factors)

def prime(number):
    for i in range(2, number-1):
        if (number % i == 0):
            return False
    return True

def primefactor():
    primefactors = []
    print("This program finds all prime factors of a number")
    print("Enter Number")
    number = input()
    number = int(number)
    array = factor(number)
    for i in array:
        if prime(i):
            primefactors.append(i)
    print("")
    print("The prime factors of %i are: %a" % (number, primefactors))
    print("The largest of which being: %i" % primefactors[-1])
primefactor()
