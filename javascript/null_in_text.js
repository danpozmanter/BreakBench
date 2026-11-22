"use strict";

function findName(id) {
  return id === 1 ? "alice" : null;
}

const name = findName(Number(process.argv[2]));
console.log(`hello, ${name}`);
