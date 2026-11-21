"use strict";

function buildAndRelease(n) {
  let head = null;
  for (let i = 0; i < n; i++) head = { value: i, next: head };
  return head ? head.value : 0;
}

buildAndRelease(Number(process.argv[2]));
console.log("done");
