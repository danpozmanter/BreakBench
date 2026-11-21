"use strict";

const n = Number(process.argv[2]);
let name;
switch (n) {
  case 1:
    name = "one";
  case 2:
    name = "two";
    break;
  default:
    name = "other";
}
console.log(name);
