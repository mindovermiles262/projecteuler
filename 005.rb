## 2520 is the smallest number that can be divided by each of the numbers from
#  1 to 10 without any remainder.
#
#  What is the smallest positive number that is evenly divisible by all of the
## numbers from 1 to 20?

def divide_by_all (divisor)
  dividend = divisor
  output = []
  ctrl_bool = true
  while ctrl_bool
    puts "dividend #{dividend}"
    # check if dividend is divisible by numbers 1..divisor
    for d in 1..divisor + 1
      # if dividend is divisible by divisor, not LCD
      if dividend % d != 0
        break
      # if looping divisor = divisor, LCD is found
      elsif d == divisor
        output.push(dividend)
        ctrl_bool = false
      end
    end
    # increment by multiples of largest divisor
    dividend += divisor
  end
  puts "Lowest Common Denomonator #{output}"
end

divide_by_all(10) # 2520
divide_by_all(20) # 232792560
