const madLib = (verb, adjective, noun) => {
  return "We shall " + verb.toUpperCase() + " the " + (adjective +" " + noun + ".").toUpperCase();
}
console.log();
console.log("madLib('make', 'best', 'guac')");
console.log(madLib('make', 'best', 'guac')); //We shall MAKE the BEST GUAC.
console.log();

const isSubstring = (searchString, subString) => {
  return searchString.includes(subString);
}

console.log("isSubstring(\"time to program\", \"time\") = " + isSubstring("time to program", "time"));
console.log("isSubstring(\"Jump for joy\", \"joys\") = " + isSubstring("Jump for joy", "joys"));
console.log();

const  fizzBuzz = (num_array) => {
  var new_array = [];
  for (let i = 0; i < num_array.length; i++) {
    if (num_array[i] % 3 === 0 ? num_array[i] % 5 != 0 : num_array[i] % 5 === 0)  {
      new_array.push(num_array[i]);
    }
  }
  return new_array;
}

console.log("fizzBuzz([3,4,5,15])");
console.log(fizzBuzz([3,4,5,15]));
console.log();

const isPrime = (number) => {
  if (number < 2) {
    return false;
  }
  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false;
    }
  }
  return true;
}

console.log("isPrime(1) = " + isPrime(1));
console.log("isPrime(2) = " + isPrime(2));
console.log("isPrime(10) = " + isPrime(10));
console.log("isPrime(15485863) = " + isPrime(15485863));
console.log("isPrime(3548563) = " + isPrime(3548563));
console.log();

const firstNPrimes = (n) => {
  var primes = [];
  var i = 2;
  while (primes.length < n) {
    if (isPrime(i)) {
      primes.push(i);
    }
    i++;
  }
  return primes;
}

const sumOfNPrimes = (n) => {
  var nPrimes = firstNPrimes(n);
  var sum = 0;
  for (let i = 0; i < n; i++) {
    sum += nPrimes[i];
  }
  return sum;
}

console.log("sumOfNPrimes(0)");
console.log(sumOfNPrimes(0));
console.log("sumOfNPrimes(1)");
console.log(sumOfNPrimes(1));
console.log("sumOfNPrimes(4)");
console.log(sumOfNPrimes(4));
