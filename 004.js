// A palindromic number reads the same both ways. The largest palindrome made from
// the product of two 2-digit numbers is 9009 = 91 × 99.

// Find the largest palindrome made from the product of two 3-digit numbers.
var reverseString = function(s){
  s = String(s);
  reversed = "";
  i = s.length;
  while (i > 0) {
    reversed += s[i-1];
    i -= 1;
  }
  return reversed;
};

var palindrome = function(min_dig, max_dig){
  pals = [];
  for (var i = min_dig; i < max_dig; i++){
    for (var j = min_dig; j < max_dig; j++) {
      product = i*j;
      if (String(product) === reverseString(product)){
        pals.push(product);
        pals.push(j);
      }
    }
  }
  a = 0;
  max_index = 0;
  max_value = 0;
  while (a < pals.length) {
    if (pals[a] >= max_value) {
      max_value = pals[a];
      max_index = a;
    }
    a++;
  }
  first = pals[max_index + 1];
  second = max_value / first;
  console.log("\nThe largest palindrome is " + max_value + ",");
  console.log("which is the product of " + first + " and " + second + "\n");
};

palindrome(100,1000);
