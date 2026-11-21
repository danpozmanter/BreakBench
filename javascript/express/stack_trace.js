// LEVEL: LANGUAGE

"use strict";

function inner() {
  return new Error().stack;
}
console.log(inner().includes("inner") ? "inner" : "missing");
