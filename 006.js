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

var sum = function(max) {
  var total = 0;
  for (var i = 0; i <= max; i++){
    add = i * i;
    total = total + add
  }
  return total
}
var square = function(max) {
  var total = 0;
  for (var i = 0; i <= max; i++) {
    total = total + i;
  }
  output = (total ** 2);
  return output
}
var dif = function(max) {
  var difference = square(max) - sum(max)
  return difference
}
console.log(dif(100))
//returns 25164150
