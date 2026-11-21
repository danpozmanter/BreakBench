"use strict";

const a = Number(process.argv[2]) !== 0;
const b = true;
let r = "unset";
if (a)
  if (b) r = "both";
else
  r = "not a";
console.log(r);
