"use strict";

function find(id) {
  return id === 1 ? 36 : undefined;
}

console.log("before");
console.log(find(2) + 1); // CONTROL! const a = find(2); console.log(a === undefined ? "missing" : a + 1);
