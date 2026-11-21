"use strict";

function count(xs) {
  xs.sort();
  return xs.length;
}

const items = [3, 1, 2];
count(items);
console.log(items[0]);
