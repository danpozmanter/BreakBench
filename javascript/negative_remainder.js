"use strict";

function isOdd(n) {
  return n % 2 === 1;
}

console.log(isOdd(Number(process.argv[2])) ? "odd" : "even");
