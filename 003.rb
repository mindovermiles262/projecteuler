## The prime factors of 13195 are 5, 7, 13 and 29.
## What is the largest prime factor of the number 600851475143 ?
start = Time.now
def factor(number)
  factors = []
  max = number.to_i
  iteration = 1
  while iteration < max
    if  number % iteration == 0
      max = number / iteration
      factors.push(iteration)
      factors.push(max)
      iteration = iteration + 1
    else
      iteration = iteration + 1
    end

  end
  return factors.sort
end

def prime(number)
  for i in 2..(number.to_i - 1)
    if number % i == 0
      return false
    end
  end
  true
end

def primefactor
  primefactors = []
  puts "This program finds all prime factors of a number"
  puts "Enter number"
  number = gets.chomp
  array = factor(number.to_i)
  for i in array
    if prime(i)
      primefactors.push(i)
    end
  end
  puts ""
  puts "Prime Factors of " + number.to_s + " are..."
  puts primefactors.to_s
end

primefactor

finish = Time.now
total_time = finish - start
puts "Time elapsed: " + total_time.to_s
