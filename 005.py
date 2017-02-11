## 2520 is the smallest number that can be divided by each of the numbers from
#  1 to 10 without any remainder.
#
#  What is the smallest positive number that is evenly divisible by all of the
## numbers from 1 to 20?

def divide_by_all (divisor):
    dividend = divisor
    output = []
    ctrl_bool = True
    while (ctrl_bool):
        print("dividend", dividend)
        #if (dividend % 2 != 0):
        #    dividend -= 1
        for d in range(1, divisor + 1):
            if (dividend % d != 0):
                break
            elif (d == divisor):
                output.append(dividend)
                ctrl_bool = False
        dividend += divisor
    print("out:", output)

divide_by_all(10) # 2520
divide_by_all(20)
