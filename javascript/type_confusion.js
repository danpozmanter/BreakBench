"use strict";

function add(a, b) {
  return a + b;
}

const raw = process.argv[2];
console.log(add(raw, 3));
