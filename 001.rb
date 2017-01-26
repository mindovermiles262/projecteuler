## If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

puts "Finds multiples of 3 and 5 then sums together"
puts ""
puts "Enter max number"
number = gets.chomp
number = number.to_i

multiples = []
sum = 0
while number > 0
  if number % 3 == 0 or number % 5 == 0
    multiples.push(number)
    sum = sum + number
    number = number - 1
  else
    number = number - 1
  end
end

puts "Multiples of 3 or 5 " + multiples.to_s
puts "Sum: " + sum.to_s
