# A palindromic number reads the same both ways. The largest palindrome made from
# the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
def palindromes(min_dig, max_dig):
    palindromes = []
    for first in range(min_dig,max_dig):
        for second in range(min_dig,max_dig):
            test = first*second
            if (str(test) == str(test)[::-1]):
                palindromes.append(test)
                palindromes.append(first)
    max_palindrome = max(palindromes)
    index_palindrome = palindromes.index(max_palindrome)
    first = int(palindromes[index_palindrome + 1])
    second = int(max_palindrome / first)
    #print("Palindromes: ", palindromes)
    print("\nThe largest palindrome is %s," % palindromes[index_palindrome])
    print("which is the product of %i and %i\n" % (first, second))

palindromes(100,1000)
