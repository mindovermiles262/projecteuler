/*
Project Euler Problem 1
@author: mindovermiles262
@date: 2018.01.18

Problem:
If we list all the natural numbers below 10 that are multiples of 3 or 5, we 
get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
*/

var sum = 0;

// iterate over each number 0 to 1000. If divisible by 3 or 5 add to sum
var multiple35 = function(max) {
	for(var i = 0; i < max; i++){
		if (i % 3 === 0 || i % 5 === 0){
			sum += i;
		}
	}
	return sum;
};

console.log(multiple35(1000));
// prints "233168"