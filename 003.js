// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?

// returns all factors of a number
var factor = function(number){
    factors = [];
    maximum = number;
    iteration = 2;
    while (iteration < maximum){
        if (number % iteration === 0) {
            maximum = number / iteration;
            factors.push(iteration);
            factors.push(maximum);
            iteration += 1;
        } else {
            iteration += 1;
        }
    }
    return factors.sort();
};

// returns true if number is prime
var prime = function(number) {
  i = 2;
  while (i < number) {
    if (number % i === 0) {
      return false;
    } else {
      i += 1;
    }
  }
  return true;
};

// prints all prime factors and maximum prime factor
var primefactor = function(number) {
  primefactors = [];
  array = factor(number);
  for (var i=0, j = array.length; i < j; i++) {
    if (prime(array[i])) {
      primefactors.push(array[i]);
    }
  }
  maxprime = Math.max(...primefactors);
  console.log("All prime factors of " + number + " are:");
  console.log(primefactors);
  console.log("With the largest being: " + maxprime);
};

primefactor(13195);
primefactor(600851475143);
