"use strict";

function findUser(id) {
  return id === 1 ? { name: "alice" } : null;
}

const u = findUser(Number(process.argv[2]));
console.log(u.name.length); // CONTROL! console.log(u === null ? "missing" : u.name.length);
