"use strict";

function pair(a, b) {
  return `${a} ${b}`;
}

let n = 0;
const next = () => ++n;
console.log(pair(next(), next()));
