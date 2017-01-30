# A palindromic number reads the same both ways. The largest palindrome made from
# the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindromes(min_dig, max_dig)
  palindromes = []
  (min_dig..max_dig).each do |first|
    (min_dig..max_dig).each do |second|
      product = first * second
      if product.to_s === product.to_s.reverse
        palindromes.push(product)
        palindromes.push(first)
      end
    end
  end
  max_palindrome = palindromes.max
  index_palindrome = palindromes.index(max_palindrome)
  first = palindromes[index_palindrome + 1]
  second = (max_palindrome / first).to_i
  print("\nThe largest palindrome is ", max_palindrome,",\n")
  print("which is the product of #{first} and #{second}\n\n")
  #puts(palindromes)
end
palindromes(100, 1000)
